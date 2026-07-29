import ComputerGraphicsAnimationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ComputerGraphicsAnimationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GraphicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ComputerGraphicsAnimationCanonicalLaneLean
end HautevilleHouse