import ComputerGraphicsAnimationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

structure SceneNode where
  name : String
  children : List SceneNode
  localTransform : (ℝ × ℝ × ℝ × ℝ) × (ℝ × ℝ × ℝ)  -- rotation matrix and translation

default instance : Inhabited SceneNode where
  default := { name := "", children := [], localTransform := ((1,0,0,0),(0,0,0)) }

structure SceneGraphPackage where
  root : SceneNode
  globalTransformsComputed : Bool
  sceneGraphClosed : Prop

default instance : Inhabited SceneGraphPackage where
  default := { root := default, globalTransformsComputed := false, sceneGraphClosed := False }

structure SceneGraphEvidence (S : SceneGraphPackage) where
  globalTransformsComputed : S.globalTransformsComputed
  sceneGraphClosed : S.sceneGraphClosed

def SceneGraphClosed (S : SceneGraphPackage) : Prop :=
  S.sceneGraphClosed

theorem scene_graph_closed_from_evidence (S : SceneGraphPackage) (E : SceneGraphEvidence S) :
    SceneGraphClosed S := by
  exact E.sceneGraphClosed

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse