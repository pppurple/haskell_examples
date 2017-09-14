applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

zipWithPlus = zipWith' (+) [4,2,5,6] [2,6,2,3]
zipWithMax  = zipWith' max [6,3,2,1] [7,3,1,5]
zipWithPlusPlus = zipWith' (++) ["foo ", "bar ", "baz "] ["fighters", "hoppers", "aldrin"]
zipWithReplicate = zipWith' (*) (replicate 5 2) [1..]
zipWithZipWith = zipWith' (zipWith' (*)) [[1,2,3],[3,5,6],[2,3,4]] [[3,2,2],[3,4,5],[5,4,3]]

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g
    where g x y = f y x

flip'' :: (a -> b -> c) -> b -> a -> c
flip'' f y x = f x y

zipped = zip [1,2,3,4,5] "hello"
zippedFlip = flip'' zip [1,2,3,4,5] "hello"
zippedWith = zipWith' div [2,2..] [10,8,6,4,2]
zippedWithFlip = zipWith' (flip'' div) [2,2..] [10,8,6,4,2]
