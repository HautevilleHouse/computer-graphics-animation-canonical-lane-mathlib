import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

structure SkinningAnimationPackage where
  skeletonHierarchy : Type u
  skinWeights : Type v
  blendShapes : Type w
  vertexDeformation : Type x
  skinningComplete : Prop

structure SkinningAnimationEvidence (S : SkinningAnimationPackage) where
  skeletonHierarchyClosed : S.skeletonHierarchy
  skinWeightsClosed : S.skinWeights
  blendShapesClosed : S.blendShapes
  vertexDeformationClosed : S.vertexDeformation
  skinningCompleteClosed : S.skinningComplete

def SkinningAnimationClosed (S : SkinningAnimationPackage) : Prop :=
  S.skeletonHierarchy ∧ S.skinWeights ∧ S.blendShapes ∧ S.vertexDeformation ∧ S.skinningComplete

theorem skinning_animation_closed_from_evidence (S : SkinningAnimationPackage)
    (E : SkinningAnimationEvidence S) : SkinningAnimationClosed S :=
  And.intro E.skeletonHierarchyClosed
    (And.intro E.skinWeightsClosed
      (And.intro E.blendShapesClosed
        (And.intro E.vertexDeformationClosed E.skinningCompleteClosed)))

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse