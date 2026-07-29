import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

structure PhysicsSimulationPackage where
  collisionDetection : Type
  rigidBodyDynamics : Prop
  softBodyDynamics : Prop
  fluidSimulation : Prop
  constraintSolver : Prop

structure PhysicsSimulationEvidence (P : PhysicsSimulationPackage) where
  rigidBodyDynamicsClosed : P.rigidBodyDynamics
  softBodyDynamicsClosed : P.softBodyDynamics
  fluidSimulationClosed : P.fluidSimulation
  constraintSolverClosed : P.constraintSolver

def PhysicsSimulationClosed (P : PhysicsSimulationPackage) : Prop :=
  P.rigidBodyDynamics ∧ P.softBodyDynamics ∧ P.fluidSimulation ∧ P.constraintSolver

theorem physics_simulation_closed_from_evidence (P : PhysicsSimulationPackage)
    (E : PhysicsSimulationEvidence P) : PhysicsSimulationClosed P := by
  exact And.intro E.rigidBodyDynamicsClosed
    (And.intro E.softBodyDynamicsClosed
      (And.intro E.fluidSimulationClosed E.constraintSolverClosed))

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse