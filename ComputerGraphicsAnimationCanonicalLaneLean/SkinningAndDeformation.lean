import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

structure SkinningAndDeformationPackage where
  skeletonHierarchy : Prop
  bindPose : Prop
  linearBlendSkinning : Prop
  dualQuaternionSkinning : Prop
  deformationConstraints : Prop
  skinningWeights : Prop
  skinningWeightsConvex : Prop

structure SkinningAndDeformationEvidence (S : SkinningAndDeformationPackage) where
  skeletonHierarchyClosed : S.skeletonHierarchy
  bindPoseClosed : S.bindPose
  linearBlendSkinningClosed : S.linearBlendSkinning
  dualQuaternionSkinningClosed : S.dualQuaternionSkinning
  deformationConstraintsClosed : S.deformationConstraints
  skinningWeightsClosed : S.skinningWeights
  skinningWeightsConvexClosed : S.skinningWeightsConvex

def SkinningAndDeformationClosed (S : SkinningAndDeformationPackage) : Prop :=
  S.skeletonHierarchy ∧ S.bindPose ∧ S.linearBlendSkinning ∧ S.dualQuaternionSkinning ∧
  S.deformationConstraints ∧ S.skinningWeights ∧ S.skinningWeightsConvex

theorem skinning_and_deformation_closed_from_evidence
    (S : SkinningAndDeformationPackage) (E : SkinningAndDeformationEvidence S) :
    SkinningAndDeformationClosed S := by
  exact And.intro E.skeletonHierarchyClosed
    (And.intro E.bindPoseClosed
      (And.intro E.linearBlendSkinningClosed
        (And.intro E.dualQuaternionSkinningClosed
          (And.intro E.deformationConstraintsClosed
            (And.intro E.skinningWeightsClosed E.skinningWeightsConvexClosed)))))

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse