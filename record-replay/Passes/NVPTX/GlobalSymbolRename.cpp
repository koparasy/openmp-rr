//=============================================================================
// FILE:
//    GSRenamePass.cpp
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

#include <string>

using namespace llvm;
using namespace omp;

namespace {

// This method implements what the pass does
void visitor(Module &M) {
  for (auto &Global : M.getGlobalList()){
    auto Name = Global.getGlobalIdentifier();
    if ( Name.find(".") == std::string::npos  )
      continue;

    std::replace( Name.begin(), Name.end(), '.', '_');
    Global.setName(Name);
  }

  for ( auto &F : M ){
    if ( F.isIntrinsic() )
      continue;

    std::string Name(F.getName());
    if ( Name.find(".") == std::string::npos  )
      continue;

    std::replace( Name.begin(), Name.end(), '.', '_');
    F.setName(Name);
  }
}

// New PM implementation
struct GSRenamePass : PassInfoMixin<GSRenamePass> {
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
struct LegacyGSRenamePass : public ModulePass {
  static char ID;
  LegacyGSRenamePass() : ModulePass(ID) {}
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
llvm::PassPluginLibraryInfo getGSRenamePassPluginInfo() {
  const auto callback = [](PassBuilder &PB) {
    PB.registerPipelineStartEPCallback([&](ModulePassManager &MPM, auto) {
      // PB.registerPipelineEarlySimplificationEPCallback([&](ModulePassManager
      // &MPM, auto) {
      MPM.addPass(GSRenamePass());
      return true;
    });
  };

  return {LLVM_PLUGIN_API_VERSION, "GSRenamePass", LLVM_VERSION_STRING,
          callback};
}

// TODO: This is the core interface for pass plugins. It guarantees that 'opt'
// will be able to recognize GSRenamePass when added to the pass pipeline
// on the command line, i.e., via '-passes=this-pass'
extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return getGSRenamePassPluginInfo();
}

//-----------------------------------------------------------------------------
// Legacy PM Registration
//-----------------------------------------------------------------------------
// The address of this variable is used to uniquely identify the pass. The
// actual value doesn't matter.
char LegacyGSRenamePass::ID = 0;

// This is the core interface for pass plugins. It guarantees that 'opt' will
// recognize LegacyGSRenamePass when added to the pass pipeline on the
// command line, i.e.  via '--legacy-amdgpuattribute-pass'
static RegisterPass<LegacyGSRenamePass>
    X("global-symbol-rename-pass", "Global Symbol Rename Pass",
      false, // This pass doesn't modify the CFG => false
      false  // This pass is not a pure analysis pass => false
    );
