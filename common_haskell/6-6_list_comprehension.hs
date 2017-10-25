main = do cs <- getContents
          putStr qsort cs

qsort [] = []
qsort (p:xs) = qsort lt ++ [p] ++ qsort gteq
    where
        lt   = [x | x <- xs, x < p]
        gteq = [x | x <- xs, x >= p]
