result = map (\x -> negate (abs x)) [5,-3,-6,7,-3,2,-19,24]
result' = map (negate . abs) [5,-3,-6,7,-3,2,-19,24]

result2 = map (\xs -> negate (sum (tail xs))) [[1..5],[3..6],[1..7]]
result2' = map (negate . sum . tail) [[1..5],[3..6],[1..7]]

result3 = sum (replicate 5 (max 6.7 8.9))
result3' = (sum . replicate 5) (max 6.7 8.9)
result3'' = sum . replicate 5 $ max 6.7 8.9

result4 = replicate 2 (product (map (*3) (zipWith max [1,2] [4,5])))
result4' = replicate 2 . product . map (*3) $ zipWith max [1,2] [4,5]

sum' :: (Num a) => [a] -> a
sum' xs = foldl (+) 0 xs

sum'' :: (Num a) => [a] -> a
sum'' = foldl (+) 0

fn x = ceiling (negate (tan (cos (max 50 x))))
fn' = ceiling . negate . tan . cos . max 50

oddSquareSum :: Integer
oddSquareSum = sum (takeWhile (<10000) (filter odd (map (^2) [1..])))

oddSquareSum' :: Integer
oddSquareSum' = sum . takeWhile (<10000) . filter odd $ map (^2) [1..]
