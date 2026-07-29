import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

structure LightTransportPackage where
  radianceTransfer : Type u
  pathIntegral : Type v
  importanceSampling : Type w
  monteCarloIntegration : Type x
  transportComplete : Prop

structure LightTransportEvidence (L : LightTransportPackage) where
  radianceTransferClosed : L.radianceTransfer
  pathIntegralClosed : L.pathIntegral
  importanceSamplingClosed : L.importanceSampling
  monteCarloIntegrationClosed : L.monteCarloIntegration
  transportCompleteClosed : L.transportComplete

def LightTransportClosed (L : LightTransportPackage) : Prop :=
  L.radianceTransfer ∧ L.pathIntegral ∧ L.importanceSampling ∧ L.monteCarloIntegration ∧ L.transportComplete

theorem light_transport_closed_from_evidence (L : LightTransportPackage)
    (E : LightTransportEvidence L) : LightTransportClosed L :=
  And.intro E.radianceTransferClosed
    (And.intro E.pathIntegralClosed
      (And.intro E.importanceSamplingClosed
        (And.intro E.monteCarloIntegrationClosed E.transportCompleteClosed)))

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse