import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

def ConstrainedAnimationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_animation_endgame (A : AdmissibleClass) :
    ConstrainedAnimationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse