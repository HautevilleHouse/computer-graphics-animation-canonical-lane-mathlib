import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

structure VisibilitySamplingPackage where
  shadowRays : Type
  nextEventEstimation : Prop
  russianRoulette : Prop
  samplingStrategy : Prop
  varianceReduction : Prop

structure VisibilitySamplingEvidence (V : VisibilitySamplingPackage) where
  nextEventEstimationClosed : V.nextEventEstimation
  russianRouletteClosed : V.russianRoulette
  samplingStrategyClosed : V.samplingStrategy
  varianceReductionClosed : V.varianceReduction

def VisibilitySamplingClosed (V : VisibilitySamplingPackage) : Prop :=
  V.nextEventEstimation ∧ V.russianRoulette ∧ V.samplingStrategy ∧ V.varianceReduction

theorem visibility_sampling_closed_from_evidence (V : VisibilitySamplingPackage)
    (E : VisibilitySamplingEvidence V) : VisibilitySamplingClosed V := by
  exact And.intro E.nextEventEstimationClosed
    (And.intro E.russianRouletteClosed
      (And.intro E.samplingStrategyClosed E.varianceReductionClosed))

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse