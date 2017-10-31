-- variable pattern
id :: a -> a
id x = x

-- wild card pattern
const :: a -> b -> a
const x _ = x

map :: (a -> b) -> [a] -> [b]
map _ []     = []
map f (x:xs) = f x : map f xs

-- literal pattern
expandTab :: Char -> Char
expandTab '/t' = '@'
expandTab c    = c

-- touple pattern
format :: (Int, String) -> String
format (n, line) = rjust 6 (show n) ++ " " ++ line

-- list pattern
last []     = error "last []"
last [x]    = x
last (_:xs) = last xs

-- data constructor pattern
map :: (a -> b) -> [a] -> [b]
map f [] = []
map f (x:xs) = f x : map f xs

-- guard
joinPath :: String -> String -> String
joinPath a b
    | null a = pathSep
    | last a == pathSep = a ++ b
    | otherwise = a ++ pathSepStr ++ b


