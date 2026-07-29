import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

structure CollisionDetectionPackage where
  boundingVolumeHierarchy : Type u
  narrowPhaseTest : Type v
  contactGeneration : Type w
  collisionResponse : Type x
  detectionComplete : Prop

structure CollisionDetectionEvidence (C : CollisionDetectionPackage) where
  boundingVolumeHierarchyClosed : C.boundingVolumeHierarchy
  narrowPhaseTestClosed : C.narrowPhaseTest
  contactGenerationClosed : C.contactGeneration
  collisionResponseClosed : C.collisionResponse
  detectionCompleteClosed : C.detectionComplete

def CollisionDetectionClosed (C : CollisionDetectionPackage) : Prop :=
  C.boundingVolumeHierarchy ∧ C.narrowPhaseTest ∧ C.contactGeneration ∧ C.collisionResponse ∧ C.detectionComplete

theorem collision_detection_closed_from_evidence (C : CollisionDetectionPackage)
    (E : CollisionDetectionEvidence C) : CollisionDetectionClosed C :=
  And.intro E.boundingVolumeHierarchyClosed
    (And.intro E.narrowPhaseTestClosed
      (And.intro E.contactGenerationClosed
        (And.intro E.collisionResponseClosed E.detectionCompleteClosed)))

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse