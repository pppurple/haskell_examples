import System.Environment
import Data.List

main = do cs <- getContents
          putStr $ unlines $ sort $ lines cs
