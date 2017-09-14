lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry!"

sayMe :: Int -> String
sayMe 1 = "one"
sayMe 2 = "two"
sayMe 3 = "three"
sayMe 4 = "four"
sayMe 5 = "five"
sayMe x = "Not between 1 and 5"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors a b = (fst a + fst b, snd a + snd b)

addVectors' :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors' (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

xs = [(1,3),(4,3),(2,4),(5,3),(5,6),(3,1)]
result = [a+b | (a, b) <- xs]
result2 = [x*100 | (x,3) <- xs]

head' :: [a] -> a
head' [] = error "Can't call head on empty list, dummy!"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The lsit is empty"
tell (x:[]) = "This list has one element : " ++ show x
tell (x:y:[]) = "This list has two elements : " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long. The first two elements are : " ++ show x ++ " and " ++ show y

firstLetter :: String -> String
firstLetter "" = "Emptry String, whoops"
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]
