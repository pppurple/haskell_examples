import qualified Data.Map as Map
import Data.Char

phoneBook =
    [("betty","111-1111")
    ,("bonnie","222-2222")
    ,("patsy","333-3333")
    ,("lucille","444-4444")
    ,("wendy","555-5555")
    ,("penny","666-6666")
    ]

findKey :: (Eq k) => k -> [(k,v)] -> v
findKey key xs = snd . head . filter (\(k,v) -> key == k) $ xs

findKey' :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey' key [] = Nothing
findKey' key ((k,v):xs)
    | key == k = Just v
    | otherwise = findKey' key xs

findKey'' :: (Eq k) => k -> [(k,v)] -> Maybe v
findKey'' key xs = foldr
    (\(k,v) acc -> if key == k then Just v else acc) Nothing xs

map1 = Map.fromList [(3,"shoes"),(4,"trees"),(5,"bees")]
map2 = Map.fromList [("kima","greggs"),("jimmy","mcnulty"),("jay","landsman")]
duplicateMap = Map.fromList [("MS",1),("MS",3),("MS",3)]

phoneBook' :: Map.Map String String
phoneBook' = Map.fromList $
    [("betty","111-1111")
    ,("bonnie","222-2222")
    ,("patsy","333-3333")
    ,("lucille","444-4444")
    ,("wendy","555-5555")
    ,("penny","666-6666")
    ]

-- lookup example
found1 = Map.lookup "betty" phoneBook'
found2 = Map.lookup "wendy" phoneBook'
found3 = Map.lookup "grace" phoneBook'
newBook = Map.insert "grace" "777-7777" phoneBook'
found3' = Map.lookup "grace" newBook

-- Map size
size = Map.size phoneBook'
newSize = Map.size newBook

-- String to Int array
string2digits :: String -> [Int]
string2digits = map digitToInt . filter isDigit

digits = string2digits "987-6543"

intBook = Map.map string2digits phoneBook'
foundInt = Map.lookup "betty" intBook

phoneBook2 =
    [("betty","111-1111")
    ,("betty","111-4325")
    ,("bonnie","222-2222")
    ,("patsy","333-3333")
    ,("patsy","333-8348")
    ,("patsy","333-8430")
    ,("lucille","444-4444")
    ,("wendy","555-5555")
    ,("penny","666-6666")
    ,("penny","666-8439")
    ]

phoneBookToMap :: (Ord k) => [(k,String)] -> Map.Map k String
phoneBookToMap xs = Map.fromListWith add xs
    where add number1 number2 = number1 ++ ", " ++ number2

foundPatsy = Map.lookup "patsy" $ phoneBookToMap phoneBook2
foundWendy = Map.lookup "wendy" $ phoneBookToMap phoneBook2
foundBetty = Map.lookup "betty" $ phoneBookToMap phoneBook2

phoneBookToMap' :: (Ord k) => [(k,a)] -> Map.Map k [a]
phoneBookToMap' xs = Map.fromListWith (++) $ map (\(k,v) -> (k,[v])) xs

foundPatsy' = Map.lookup "patsy" $ phoneBookToMap' phoneBook2

maxPair = Map.fromListWith max [(2,3),(2,5),(2,100),(3,29),(3,22),(3,11),(4,22),(4,15)]
sumPair = Map.fromListWith (+) [(2,3),(2,5),(2,100),(3,29),(3,22),(3,11),(4,22),(4,15)]
