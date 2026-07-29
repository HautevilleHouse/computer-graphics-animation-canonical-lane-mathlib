import ComputerGraphicsAnimationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AnimationScene where
  carrier : Type
  topology : TopologicalSpace carrier

structure AnimationAdmittedObject where
  scene : AnimationScene
  closedLoop : Prop
  simplyConnected : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure AnimationEndgameState where
  object : AnimationAdmittedObject

def AnimationWitnessClosed (O : AnimationAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse