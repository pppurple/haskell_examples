sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

summed = sum' [3,5,2,1]

sum'' :: (Num a) => [a] -> a
sum'' = foldl (+) 0

sumCurry = sum'' [3,5,2,1]

map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x : acc) [] xs

mappedr = map' (+3) [1,2,3]

map'' :: (a -> b) -> [a] -> [b]
map'' f xs = foldl (\acc x -> acc ++ [f x]) [] xs

mappedl = map'' (+3) [1,2,3]

elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldr (\x acc -> if x == y then True else acc) False ys

maximum' :: (Ord a) => [a] -> a
maximum' = foldl1 max

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []

reverse'' :: [a] -> [a]
reverse'' = foldl (flip (:)) []

product' :: (Num a) => [a] -> a
product' = foldl (*) 1

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr (\x acc -> if p x then x : acc else acc) []

last' :: [a] -> a
last' = foldl1 (\_ x -> x)

and2 :: [Bool] -> Bool
and2 xs = foldr (&&) True xs

scanned = scanl (+) 0 [3,5,2,1]
scanned2 = scanr (+) 0 [3,5,2,1]
scanned3 = scanl1 (\acc x -> if x > acc then x else acc) [3,4,5,3,7,8,2,1]
scanned4 = scanl (flip (:)) [] [3,2,1]

sqrtSum :: Int
sqrtSum = length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))) + 1
