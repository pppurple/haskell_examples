summed = sum (map sqrt [1..130])
summed2 = sum $ map sqrt [1..130]

sumFiltered = sum (filter (>10) (map (*2) [2..18]))
sumFiltered' = sum $ filter (>10) (map (*2) [2..18])
sumFiltered'' = sum $ filter (>10) $ map (*2) [2..18]
