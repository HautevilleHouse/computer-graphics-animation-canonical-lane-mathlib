import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

structure ShaderPipelinePackage where
  vertexShader : Type
  fragmentShader : Type
  rasterization : Prop
  perFragmentOperations : Prop
  colorBlending : Prop

structure ShaderPipelineEvidence (S : ShaderPipelinePackage) where
  rasterizationClosed : S.rasterization
  perFragmentOperationsClosed : S.perFragmentOperations
  colorBlendingClosed : S.colorBlending

def ShaderPipelineClosed (S : ShaderPipelinePackage) : Prop :=
  S.rasterization ∧ S.perFragmentOperations ∧ S.colorBlending

theorem shader_pipeline_closed_from_evidence (S : ShaderPipelinePackage)
    (E : ShaderPipelineEvidence S) : ShaderPipelineClosed S := by
  exact And.intro E.rasterizationClosed
    (And.intro E.perFragmentOperationsClosed E.colorBlendingClosed)

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse