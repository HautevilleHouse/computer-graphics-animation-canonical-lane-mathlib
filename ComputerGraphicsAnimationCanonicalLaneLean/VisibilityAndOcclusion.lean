import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

structure VisibilityAndOcclusionPackage where
  depthOrdering : Prop
  occlusionCulling : Prop
  portalRendering : Prop
  frustumCulling : Prop
  visibilityDetermination : Prop

structure VisibilityAndOcclusionEvidence (V : VisibilityAndOcclusionPackage) where
  depthOrderingClosed : V.depthOrdering
  occlusionCullingClosed : V.occlusionCulling
  portalRenderingClosed : V.portalRendering
  frustumCullingClosed : V.frustumCulling
  visibilityDeterminationClosed : V.visibilityDetermination

def VisibilityAndOcclusionClosed (V : VisibilityAndOcclusionPackage) : Prop :=
  V.depthOrdering ∧ V.occlusionCulling ∧ V.portalRendering ∧ V.frustumCulling ∧ V.visibilityDetermination

theorem visibility_and_occlusion_closed_from_evidence
    (V : VisibilityAndOcclusionPackage) (E : VisibilityAndOcclusionEvidence V) :
    VisibilityAndOcclusionClosed V := by
  exact And.intro E.depthOrderingClosed
    (And.intro E.occlusionCullingClosed
      (And.intro E.portalRenderingClosed
        (And.intro E.frustumCullingClosed E.visibilityDeterminationClosed)))

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse