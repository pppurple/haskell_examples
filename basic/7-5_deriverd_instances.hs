data Person = Person { firstName :: String
                      , lastName :: String
                      , age :: Int
                      } deriving (Eq, Show, Read)

mikeD = Person {firstName="Michael", lastName="Diamond", age=43}
adRock = Person {firstName="Adam", lastName="Horovitz", age=41}
mca = Person {firstName="Adam", lastName="Yauch", age=44}

isEq = mca == adRock
isEq2 = mikeD == adRock
isEq3 = mikeD == mikeD
isEq4 = mikeD == Person {firstName="Michael", lastName="Diamond", age=43}

beastieBoys = [mca, adRock, mikeD]
has = mikeD `elem` beastieBoys

-- Read
mysteryDude = "Person {firstName=\"Michael\", lastName=\"Diamond\", age=43}"
readDude = read mysteryDude :: Person

readInt = read "Just 3" :: Maybe Int


data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday
    deriving (Eq, Ord, Show, Read, Bounded, Enum)

showed = show Wednesday
readDay = read "Saturday" :: Day
isEqDay = Saturday == Sunday
isEqDay' = Saturday == Saturday
compared = Saturday > Friday
compared' = Saturday < Friday
compared'' = Monday `compare` Wednesday
minDay = minBound :: Day
maxDay = maxBound :: Day
succed = succ Monday
preded = pred Saturday
range = [Thursday .. Sunday]
range2 = [minBound .. maxBound] :: [Day]
