import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

structure RenderingEquationPackage where
  radianceField : Type
  brdf : Type
  lightTransport : Prop
  pathIntegralFormulation : Prop
  monteCarloConvergence : Prop

structure RenderingEquationEvidence (R : RenderingEquationPackage) where
  lightTransportClosed : R.lightTransport
  pathIntegralFormulationClosed : R.pathIntegralFormulation
  monteCarloConvergenceClosed : R.monteCarloConvergence

def RenderingEquationClosed (R : RenderingEquationPackage) : Prop :=
  R.lightTransport ∧ R.pathIntegralFormulation ∧ R.monteCarloConvergence

theorem rendering_equation_closed_from_evidence (R : RenderingEquationPackage)
    (E : RenderingEquationEvidence R) : RenderingEquationClosed R := by
  exact And.intro E.lightTransportClosed
    (And.intro E.pathIntegralFormulationClosed E.monteCarloConvergenceClosed)

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse