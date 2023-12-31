//===-- Passes.td - SPIRV pass definition file -------------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef MLIR_DIALECT_SPIRV_TRANSFORMS_PASSES
#define MLIR_DIALECT_SPIRV_TRANSFORMS_PASSES

include "mlir/Pass/PassBase.td"

def SPIRVCompositeTypeLayout
    : Pass<"decorate-spirv-composite-type-layout", "mlir::ModuleOp"> {
  let summary = "Decorate SPIR-V composite type with layout info";
  let constructor = "mlir::spirv::createDecorateSPIRVCompositeTypeLayoutPass()";
}

def SPIRVCanonicalizeGL : Pass<"spirv-canonicalize-gl", ""> {
  let summary = "Run canonicalization involving GLSL ops";
  let constructor = "mlir::spirv::createCanonicalizeGLPass()";
}

def SPIRVLowerABIAttributes : Pass<"spirv-lower-abi-attrs", "spirv::ModuleOp"> {
  let summary = "Decorate SPIR-V composite type with layout info";
  let constructor = "mlir::spirv::createLowerABIAttributesPass()";
}

def SPIRVRewriteInsertsPass : Pass<"spirv-rewrite-inserts", "spirv::ModuleOp"> {
  let summary = "Rewrite sequential chains of spirv.CompositeInsert operations into "
                "spirv.CompositeConstruct operations";
  let constructor = "mlir::spirv::createRewriteInsertsPass()";
}

def SPIRVUnifyAliasedResourcePass
    : Pass<"spirv-unify-aliased-resource", "spirv::ModuleOp"> {
  let summary = "Unify access of multiple aliased resources into access of one "
                "single resource";
  let constructor = "mlir::spirv::createUnifyAliasedResourcePass()";
}

def SPIRVUpdateVCE : Pass<"spirv-update-vce", "spirv::ModuleOp"> {
  let summary = "Deduce and attach minimal (version, capabilities, extensions) "
                "requirements to spirv.module ops";
  let constructor = "mlir::spirv::createUpdateVersionCapabilityExtensionPass()";
}

def SPIRVWebGPUPreparePass : Pass<"spirv-webgpu-prepare", "spirv::ModuleOp"> {
  let summary = "Prepare SPIR-V to target WebGPU by expanding unsupported ops "
                "and replacing with supported ones";
}

#endif // MLIR_DIALECT_SPIRV_TRANSFORMS_PASSES
