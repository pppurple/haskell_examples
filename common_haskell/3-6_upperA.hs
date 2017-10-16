main = do cs <- getContents
          putStr $ map upperA cs

upperA :: Char -> Char
upperA 'a' = 'A'
upperA c = c
