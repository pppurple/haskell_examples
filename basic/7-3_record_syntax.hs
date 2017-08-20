data Person = Person String String Int Float String String
    deriving (Show)

guy = Person "Buddy" "Finklestein" 43 184.2 "526-2928" "Chocolate"

firstName :: Person -> String
firstName (Person firstName _ _ _ _ _) = firstName

lastName :: Person -> String
lastName (Person _ lastName _ _ _ _) = lastName

age :: Person -> Int
age (Person _ _ age _ _ _) = age

height :: Person -> Float
height (Person _ _ _ height _ _) = height

phoneNumber :: Person -> String
phoneNumber (Person _ _ _ _ phoneNumber _) = phoneNumber

flavor :: Person -> String
flavor (Person _ _ _ _ _ flavor) = flavor

fname = firstName guy
h = height guy
f = flavor guy

-- レコード構文
data Person' = Person' { firstName' :: String
        , lastName' :: String
        , age' :: Int
        , height' :: Float
        , phoneNumber' :: String
        , flavor' :: String
        } deriving (Show)

data Car = Car {
    company :: String
    , model :: String
    , year :: Int
} deriving (Show)

ford = Car {company="Ford", model="Mustang", year=1967}
