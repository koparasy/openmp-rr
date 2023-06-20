//=============================================================================
// FILE:
//    AMDGPUAttributePass.cpp
//
// DESCRIPTION:
//    Find device functions targeting the AMD GPU architecture and set different
//    values for AMD GPU specific attributes.
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
    KernelEntryFunctionNameOpt("amdgpu-kernel-entry-function-name",
                         cl::desc("Set AMDGPU attributes for this kernel entry function."),
                         cl::Hidden, cl::init(""));

static cl::opt<std::string>
    FlatWorkGroupSizeOpt("amdgpu-flat-work-group-size",
                         cl::desc("Set AMDGPU flat work group size attribute."),
                         cl::Hidden, cl::init(""));

static cl::opt<std::string>
    NumSGPROpt("amdgpu-num-sgpr", cl::desc("Set AMDGPU Num SGPR attribute."),
               cl::Hidden, cl::init(""));

static cl::opt<std::string>
    NumVGPROpt("amdgpu-num-vgpr", cl::desc("Set AMDGPU Num VGPR attribute."),
               cl::Hidden, cl::init(""));

static cl::opt<std::string>
    WavesPerEUOpt("amdgpu-waves-per-eu",
                  cl::desc("Set AMDGPU waves per EU attribute."), cl::Hidden,
                  cl::init(""));

//-----------------------------------------------------------------------------
// AMDGPUAttributePass implementation
//-----------------------------------------------------------------------------
// No need to expose the internals of the pass to the outside world - keep
// everything in an anonymous namespace.
namespace {

struct EnvVarOpt {
  std::string OptVal;
  std::string OptKind;

  EnvVarOpt(const StringRef EnvVarName, StringRef OptKindIn)
      : OptKind(OptKindIn) {
    char *EnvVal = std::getenv(EnvVarName.str().c_str());
    OptVal = (EnvVal ? EnvVal : "");
  }
};

// This method implements what the pass does
void visitor(Module &M) {
  OpenMPIRBuilder OMPBuilder(M);
  OMPBuilder.initialize();

  KernelSet KernelEntryFunctions = getDeviceKernels(M);

#if 0
  auto CollectKernelEntryFunctions = [&](Module &M) {
    FunctionCallee TargetInit =
        OMPBuilder.getOrCreateRuntimeFunction(M, OMPRTL___kmpc_target_init);
    FunctionCallee TargetDeinit =
        OMPBuilder.getOrCreateRuntimeFunction(M, OMPRTL___kmpc_target_deinit);

    for (Function &F : M) {
      bool CallsTargetInit = false;
      bool CallsTargetDeinit = false;

      for (Use &U : TargetInit.getCallee()->uses())
        if (auto *I = dyn_cast<Instruction>(U.getUser()))
          if (I->getFunction() == &F) {
            CallsTargetInit = true;
            break;
          }

      for (Use &U : TargetDeinit.getCallee()->uses())
        if (Instruction *I = dyn_cast<Instruction>(U.getUser()))
          if (I->getFunction() == &F) {
            CallsTargetDeinit = true;
            break;
          }

      if (!CallsTargetInit || !CallsTargetDeinit)
        continue;

      KernelEntryFunctions.insert(&F);
    }
  };

  CollectKernelEntryFunctions(M);
  #endif

  EnvVarOpt KernelEntryFunctionName("AMDGPU_KERNEL_ENTRY_FUNCTION_NAME", "");
  EnvVarOpt FlatWorkGroupSize("AMDGPU_FLAT_WORK_GROUP_SIZE",
                              "amdgpu-flat-work-group-size");
  EnvVarOpt NumSGPR("AMDGPU_NUM_SGPR", "amdgpu-num-sgpr");
  EnvVarOpt NumVGPR("AMDGPU_NUM_VGPR", "amdgpu-num-vgpr");
  EnvVarOpt WavesPerEU("AMDGPU_WAVES_PER_EU", "amdgpu-waves-per-eu");

  auto CheckAndSetAttribute = [](Function &F, StringRef AttrKind,
                                 StringRef AttrVal) {
    if (AttrVal.empty())
      return;

    outs() << "Set Attribute " << AttrKind << " => " << AttrVal << "\n";
    F.addFnAttr(AttrKind, AttrVal);
  };

  for (Function *F : KernelEntryFunctions) {
    outs() << "Found Function " << F->getName() << "\n";
    if (!KernelEntryFunctionName.OptVal.empty() &&
        F->getName() != KernelEntryFunctionName.OptVal) {
      outs() << "Skip " << F->getName() << "\n";
      continue;
    }

    outs() << "Kernel entry function " << F->getName() << "\n";
    // Use command-line options.
    CheckAndSetAttribute(*F, FlatWorkGroupSizeOpt.ArgStr, FlatWorkGroupSizeOpt);
    CheckAndSetAttribute(*F, NumSGPROpt.ArgStr, NumSGPROpt);
    CheckAndSetAttribute(*F, NumVGPROpt.ArgStr, NumVGPROpt);
    CheckAndSetAttribute(*F, WavesPerEUOpt.ArgStr, WavesPerEUOpt);
    // Use env vars, they take precedence over command-line options.
    CheckAndSetAttribute(*F, FlatWorkGroupSize.OptKind, FlatWorkGroupSize.OptVal);
    CheckAndSetAttribute(*F, NumSGPR.OptKind, NumSGPR.OptVal);
    CheckAndSetAttribute(*F, NumVGPR.OptKind, NumVGPR.OptVal);
    CheckAndSetAttribute(*F, WavesPerEU.OptKind, WavesPerEU.OptVal);
  }
}

// New PM implementation
struct AMDGPUAttributePass : PassInfoMixin<AMDGPUAttributePass> {
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
struct LegacyAMDGPUAttributePass : public ModulePass {
  static char ID;
  LegacyAMDGPUAttributePass() : ModulePass(ID) {}
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
llvm::PassPluginLibraryInfo getAMDGPUAttributePassPluginInfo() {
  const auto callback = [](PassBuilder &PB) {
    PB.registerPipelineStartEPCallback([&](ModulePassManager &MPM, auto) {
      // PB.registerPipelineEarlySimplificationEPCallback([&](ModulePassManager
      // &MPM, auto) {
      MPM.addPass(AMDGPUAttributePass());
      return true;
    });
  };

  return {LLVM_PLUGIN_API_VERSION, "AMDGPUAttributePass", LLVM_VERSION_STRING,
          callback};
}

// TODO: This is the core interface for pass plugins. It guarantees that 'opt'
// will be able to recognize AMDGPUAttributePass when added to the pass pipeline
// on the command line, i.e., via '-passes=this-pass'
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return getAMDGPUAttributePassPluginInfo();
}

//-----------------------------------------------------------------------------
// Legacy PM Registration
//-----------------------------------------------------------------------------
// The address of this variable is used to uniquely identify the pass. The
// actual value doesn't matter.
char LegacyAMDGPUAttributePass::ID = 0;

// This is the core interface for pass plugins. It guarantees that 'opt' will
// recognize LegacyAMDGPUAttributePass when added to the pass pipeline on the
// command line, i.e.  via '--legacy-amdgpuattribute-pass'
static RegisterPass<LegacyAMDGPUAttributePass>
    X("legacy-amdgpuattribute-pass", "AMDGPU Attribute Pass",
      false, // This pass doesn't modify the CFG => false
      false  // This pass is not a pure analysis pass => false
    );
