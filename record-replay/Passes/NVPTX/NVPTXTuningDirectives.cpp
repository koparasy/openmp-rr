//=============================================================================
// FILE:
//    NVPTXTunePass.cpp
//
// DESCRIPTION:
//    Find device functions targeting the NVPTXC GPU architecture and set different
//    values for NVPTX GPU specific attributes.
//
//=============================================================================

#include "llvm/Frontend/OpenMP/OMPConstants.h"
#include "llvm/Frontend/OpenMP/OMPIRBuilder.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/IPO/OpenMPOpt.h"

using namespace llvm;
using namespace omp;

static cl::opt<std::string>
    KernelEntryFunctionName("nvptx-function-name",
                         cl::desc("Set NVPTX attributes for this kernel entry function."),
                         cl::Hidden, cl::init(""));

static cl::opt<int>
    MaxRegister("max-registers",
                         cl::desc("set-maximum-number-of-registers"),
                         cl::Hidden, cl::init(-1));
static cl::opt<int>
    MaxThreads("max-threads", cl::desc("Set maximum number of threads."),
               cl::Hidden, cl::init(-1));
static cl::opt<int>
    ReqThreads("req-threads", cl::desc("request a specific number of threads."),
               cl::Hidden, cl::init(-1));
static cl::opt<int>
    MinBlocks("min-blocks", cl::desc("provide resources to accomodate at least that many blocks."),
               cl::Hidden, cl::init(-1));

//-----------------------------------------------------------------------------
// NVPTXTunePass implementation
//-----------------------------------------------------------------------------
// No need to expose the internals of the pass to the outside world - keep
// everything in an anonymous namespace.
namespace {

struct NVPTXTuneParams {
  std::string MetaName;
  int value;
  NVPTXTuneParams(const StringRef MetaName, const StringRef EnvVarName, int value) :
    MetaName(MetaName), value(value) {
    char *EnvVal = std::getenv(EnvVarName.str().c_str());
    if ( EnvVal ) {
      value = std::atoi(EnvVal);
    }
  }
};

// This method implements what the pass does
void visitor(Module &M) {
  OpenMPIRBuilder OMPBuilder(M);
  OMPBuilder.initialize();
  outs() << "I AM HERE\n";

  KernelSet KernelEntryFunctions = getDeviceKernels(M);
  SmallVector<NVPTXTuneParams, 4> TuneParams = {
    NVPTXTuneParams("maxnreg", "MAX_REGISTERS", MaxRegister),
    NVPTXTuneParams("maxntidx", "MAX_THREADS", MaxThreads),
    NVPTXTuneParams("reqntid", "REQUEST_THREADS", ReqThreads),
    NVPTXTuneParams("minctasm", "MIN_BLOCKS", MinBlocks)
  };

  llvm::NamedMDNode *MD = M.getOrInsertNamedMetadata("nvvm.annotations");

  auto CheckAndSetMetaData = [&M, MD](Function &F, NVPTXTuneParams& Param) {
    if (Param.value == -1)
      return;

    outs() << "Set Metadata " << Param.MetaName << " => " << Param.value << "\n";
    llvm::LLVMContext &Ctx = M.getContext();
    // Get "nvvm.annotations" metadata node
    llvm::Metadata *MDVals[] = {
        llvm::ConstantAsMetadata::get(&F), llvm::MDString::get(Ctx, Param.MetaName),
        llvm::ConstantAsMetadata::get(
          llvm::ConstantInt::get(llvm::Type::getInt32Ty(Ctx), Param.value))};
    MD->addOperand(llvm::MDNode::get(Ctx, MDVals));

  };

  for (Function *F : KernelEntryFunctions) {
    outs() << "Found Function " << F->getName() << "\n";
    if (F->getName() != KernelEntryFunctionName){
      outs() << "Skip " << F->getName() << "\n";
      continue;
    }

    outs() << "Kernel entry function " << F->getName() << "\n";
    for ( auto& T : TuneParams ){
      CheckAndSetMetaData(*F, T);
    }
  }
}

// New PM implementation
struct NVPTXTunePass : PassInfoMixin<NVPTXTunePass> {
  // Main entry point, takes IR unit to run the pass on (&F) and the
  // corresponding pass manager (to be queried if need be)
  PreservedAnalyses run(Module &M, ModuleAnalysisManager &AM) {
    visitor(M);
    // TODO: is anything preserved?
    return PreservedAnalyses::none();
    // return PreservedAnalyses::all();
  }

  // Without isRequired returning true, this pass will be skipped for functions
  // decorated with the optnone LLVM attribute. Note that clang -O0 decorates
  // all functions with optnone.
  static bool isRequired() { return true; }
};

// Legacy PM implementation
struct LegacyNVPTXTunePass : public ModulePass {
  static char ID;
  LegacyNVPTXTunePass() : ModulePass(ID) {}
  // Main entry point - the name conveys what unit of IR this is to be run on.
  bool runOnModule(Module &M) override {
    visitor(M);

    // TODO: what is preserved?
    return true;
    // Doesn't modify the input unit of IR, hence 'false'
    // return false;
  }
};
} // namespace

//-----------------------------------------------------------------------------
// New PM Registration
//-----------------------------------------------------------------------------
llvm::PassPluginLibraryInfo getNVPTXTunePassPluginInfo() {
  const auto callback = [](PassBuilder &PB) {
    PB.registerPipelineStartEPCallback([&](ModulePassManager &MPM, auto) {
      // PB.registerPipelineEarlySimplificationEPCallback([&](ModulePassManager
      // &MPM, auto) {
      MPM.addPass(NVPTXTunePass());
      return true;
    });
  };

  return {LLVM_PLUGIN_API_VERSION, "NVPTXTunePass", LLVM_VERSION_STRING,
          callback};
}

// TODO: This is the core interface for pass plugins. It guarantees that 'opt'
// will be able to recognize NVPTXTunePass when added to the pass pipeline
// on the command line, i.e., via '-passes=this-pass'
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return getNVPTXTunePassPluginInfo();
}

//-----------------------------------------------------------------------------
// Legacy PM Registration
//-----------------------------------------------------------------------------
// The address of this variable is used to uniquely identify the pass. The
// actual value doesn't matter.
char LegacyNVPTXTunePass::ID = 0;

// This is the core interface for pass plugins. It guarantees that 'opt' will
// recognize LegacyNVPTXTunePass when added to the pass pipeline on the
// command line, i.e.  via '--legacy-amdgpuattribute-pass'
static RegisterPass<LegacyNVPTXTunePass>
    X("legacy-nvptx-tune-pass", "NVPTX Attribute Pass",
      false, // This pass doesn't modify the CFG => false
      false  // This pass is not a pure analysis pass => false
    );
