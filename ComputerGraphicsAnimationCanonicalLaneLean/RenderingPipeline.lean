import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

structure RenderingPipelinePackage where
  vertexShader : Prop
  fragmentShader : Prop
  rasterization : Prop
  depthBuffer : Prop
  antiAliasing : Prop
  pipelineIntegrity : Prop

structure RenderingPipelineEvidence (R : RenderingPipelinePackage) where
  vertexShaderClosed : R.vertexShader
  fragmentShaderClosed : R.fragmentShader
  rasterizationClosed : R.rasterization
  depthBufferClosed : R.depthBuffer
  antiAliasingClosed : R.antiAliasing
  pipelineIntegrityClosed : R.pipelineIntegrity

def RenderingPipelineClosed (R : RenderingPipelinePackage) : Prop :=
  R.vertexShader ∧ R.fragmentShader ∧ R.rasterization ∧ R.depthBuffer ∧ R.antiAliasing ∧ R.pipelineIntegrity

theorem rendering_pipeline_closed_from_evidence
    (R : RenderingPipelinePackage) (E : RenderingPipelineEvidence R) :
    RenderingPipelineClosed R := by
  exact And.intro E.vertexShaderClosed
    (And.intro E.fragmentShaderClosed
      (And.intro E.rasterizationClosed
        (And.intro E.depthBufferClosed
          (And.intro E.antiAliasingClosed E.pipelineIntegrityClosed))))

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse