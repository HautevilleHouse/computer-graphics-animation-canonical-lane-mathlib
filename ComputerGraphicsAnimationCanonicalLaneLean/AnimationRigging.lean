import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

structure AnimationRiggingPackage where
  skeletalHierarchy : Type
  skinningWeights : Type
  forwardKinematics : Prop
  inverseKinematics : Prop
  blendShapes : Prop

structure AnimationRiggingEvidence (A : AnimationRiggingPackage) where
  forwardKinematicsClosed : A.forwardKinematics
  inverseKinematicsClosed : A.inverseKinematics
  blendShapesClosed : A.blendShapes

def AnimationRiggingClosed (A : AnimationRiggingPackage) : Prop :=
  A.forwardKinematics ∧ A.inverseKinematics ∧ A.blendShapes

theorem animation_rigging_closed_from_evidence (A : AnimationRiggingPackage)
    (E : AnimationRiggingEvidence A) : AnimationRiggingClosed A := by
  exact And.intro E.forwardKinematicsClosed
    (And.intro E.inverseKinematicsClosed E.blendShapesClosed)

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse