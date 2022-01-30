add3 = map (+3) [1,5,3,1,6]
addExclamation = map (++ "!") ["BIFF", "BANG", "FOW"]
replicated = map (replicate 3) [3..6]
map2 = map (map (^2)) [[1,2],[3,4,5,6],[7,8]]
mapFst = map fst [(1,2),(3,5),(6,3),(2,6),(2,5)]

filtered = filter (>3) [1,5,3,2,1,6,4,3,2,1]
filtered' = filter (==3) [1,2,3,4,5]
filtered'' = filter even [1..10]
filteredLower = filter (`elem` ['a'..'z']) "u LaFdI jfdIFNG Lkfdsipw+F+D"
filteredUpper = filter (`elem` ['A'..'Z']) "u LaFdI jfdIFNG Lkfdsipw+F+D"

twice = filter (<15) (filter even [1..20])
twice' = [x | x <- [1..20], x < 15, even x]

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
        let smallerOrEqual = filter (<= x) xs
            larger = filter (> x) xs
        in quicksort smallerOrEqual ++ [x] ++ quicksort larger

largestDivisible :: Integer
largestDivisible = head (filter p [100000,99999..])
    where p x = x `mod` 3829 == 0

firstWord = takeWhile (/=' ') "elephants know to praty"
sumHeihoOdd = sum (takeWhile (<10000) (filter odd (map (^2) [1..])))
sumHeihoOdd' = sum (takeWhile (<10000) [m | m <- [n^2 | n <- [1..]], odd m])

chain :: Integer -> [Integer]
chain 1 = [1]
chain n
    | even n = n : chain (n `div` 2)
    | odd n  = n : chain (n * 3 + 1)

numLongChains :: Int
numLongChains = length (filter isLong (map chain [1..100]))
    where isLong xs = length xs > 15

listOfFuns = map (*) [0..]
listOfFunsResult = (listOfFuns !! 4) 5
