justHaha = Just "Haha"
just84 = Just 84

data Car = Car {
    company :: String
    , model :: String
    , year :: Int
} deriving (Show)

data Car' a b c = Car' {
    company' :: a
    , model' :: b
    , year' :: c
} deriving (Show)

tellCar :: Car -> String
tellCar (Car {company = c, model = m, year = y}) =
    "This " ++ c ++ " " ++ m ++ " was made in " ++ show y

stang = Car {company="Ford", model="Mustang", year=1967}
told = tellCar stang

tellCar' :: (Show a) => Car' String String a -> String
tellCar' (Car' {company' = c, model' = m, year' = y}) =
    "This " ++ c ++ " " ++ m ++ " was made in " ++ show y

told' = tellCar' (Car' "Ford" "Mustang" 1967)
told'' = tellCar' (Car' "Ford" "Mustang" "nineteen sixty sevenn")

-- 3次元ベクトル
data Vector a = Vector a a a deriving (Show)

vplus :: (Num a) => Vector a -> Vector a -> Vector a
(Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)

dotProd :: (Num a) => Vector a -> Vector a -> a
(Vector i j k) `dotProd` (Vector l m n) = i*l + j*m + k*n

vmult :: (Num a) => Vector a -> a -> Vector a
(Vector i j k) `vmult` m = Vector (i*m) (j*m) (k*m)

vresult = Vector 3 5 8 `vplus` Vector 9 2 8
vresult' = Vector 3 5 8 `vplus` Vector 9 2 8 `vplus` Vector 0 2 3
vresult'' = Vector 3 9 7 `vmult` 10
vresult''' = Vector 4 9 5 `dotProd` Vector 9.0 2.0 4.0
vresult'''' = Vector 2 9 3 `vmult` (Vector 4 9 5 `dotProd` Vector 9 2 4)
