import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

structure AnimationCurveInterpolationPackage where
  curveType : Type
  controlPoints : List Point
  interpolationMethod : String
  smoothnessGuarantee : Prop
  continuityConstraint : Prop
  timeDomain : Type
  timeContinuity : Prop

data Point : Type := mk (x : ℝ) (y : ℝ) (z : ℝ)

structure AnimationCurveInterpolationEvidence (A : AnimationCurveInterpolationPackage) where
  smoothnessGuaranteeClosed : A.smoothnessGuarantee
  continuityConstraintClosed : A.continuityConstraint
  timeContinuityClosed : A.timeContinuity

def AnimationCurveInterpolationClosed (A : AnimationCurveInterpolationPackage) : Prop :=
  A.smoothnessGuarantee ∧ A.continuityConstraint ∧ A.timeContinuity

theorem animation_curve_interpolation_closed_from_evidence
    (A : AnimationCurveInterpolationPackage)
    (E : AnimationCurveInterpolationEvidence A) :
    AnimationCurveInterpolationClosed A := by
  exact And.intro E.smoothnessGuaranteeClosed
    (And.intro E.continuityConstraintClosed E.timeContinuityClosed)

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse