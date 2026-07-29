import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

structure AnimationPipelinePackage where
  sceneGraph : Type u
  transformHierarchy : Type v
  keyframeData : Type w
  interpolationScheme : Type x
  rasterizationTarget : Type y
  pipelineComplete : Prop

structure AnimationPipelineEvidence (P : AnimationPipelinePackage) where
  pipelineCompleteClosed : P.pipelineComplete

def AnimationPipelineClosed (P : AnimationPipelinePackage) : Prop :=
  P.pipelineComplete

theorem animation_pipeline_closed_from_evidence (P : AnimationPipelinePackage)
    (E : AnimationPipelineEvidence P) : AnimationPipelineClosed P :=
  E.pipelineCompleteClosed

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse