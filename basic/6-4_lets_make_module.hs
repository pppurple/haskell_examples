-- import Geometry
import qualified Geometry.Sphere as Sphere
import qualified Geometry.Cuboid as Cuboid
import qualified Geometry.Cube as Cube

-- sphereVol = sphereVolume 10

sphereVol = Sphere.volume 10
sphereArea = Sphere.area 10

cuboidVol = Cuboid.volume 2 3 4
cuboidArea = Cuboid.area 2 3 4

cubeVol = Cube.volume 10
cubeArea = Cube.area 10
