import ComputerGraphicsAnimationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

structure BoneHierarchy where
  bones : List String
  parentRelations : List (String × String)
  rootBone : String
  hierarchyClosed : Prop

default instance : Inhabited BoneHierarchy where
  default := { bones := [], parentRelations := [], rootBone := "", hierarchyClosed := False }

structure SkeletalAction where
  boneName : String
  translation : ℝ × ℝ × ℝ
  rotation : ℝ × ℝ × ℝ × ℝ
  scale : ℝ × ℝ × ℝ

default instance : Inhabited SkeletalAction where
  default := { boneName := "", translation := (0,0,0), rotation := (0,0,0,0), scale := (1,1,1) }

structure SkeletalAnimationPackage where
  hierarchy : BoneHierarchy
  keyframes : List (Nat × SkeletalAction)
  interpolationMethod : String
  animationClosed : Prop

default instance : Inhabited SkeletalAnimationPackage where
  default := { hierarchy := default, keyframes := [], interpolationMethod := "linear", animationClosed := False }

structure SkeletalAnimationEvidence (S : SkeletalAnimationPackage) where
  hierarchyClosed : S.hierarchy.hierarchyClosed
  keyframesValid : S.keyframes ≠ []
  animationClosed : S.animationClosed

def SkeletalAnimationClosed (S : SkeletalAnimationPackage) : Prop :=
  S.hierarchy.hierarchyClosed ∧ S.animationClosed

theorem skeletal_animation_closed_from_evidence (S : SkeletalAnimationPackage) (E : SkeletalAnimationEvidence S) :
    SkeletalAnimationClosed S := by
  exact And.intro E.hierarchyClosed E.animationClosed

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse