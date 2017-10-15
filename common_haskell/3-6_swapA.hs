main = do cs <- getContents
          putStr $ map swapA cs

swapA :: Char -> Char
swapA 'a' = 'A'
swapA 'A' = 'a'
swapA c = c
