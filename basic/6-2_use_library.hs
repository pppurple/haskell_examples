import Data.List
import Data.Char

wordsList = words "hey these are the words in this sentense"
wordsList' = words "hey these       are    the words in this sentense"

grouped = group [1,1,1,1,2,2,2,3,3,2,2,2,2,5,6,7]
grouped' = group ["boom","bip","bip","boom","boom"]

sorted = sort [1,1,1,1,2,2,2,3,3,2,2,2,2,5,6,7]
sorted' = sort ["boom","bip","bip","boom","boom"]

wordNums :: String -> [(String,Int)]
wordNums = map (\ws -> (head ws, length ws)) . group . sort . words

wordNumsResult = wordNums "wa wa wee wa do wee"

tailsed = tails "party"
tailsed' = tails [1,2,3]

isExist = "hawaii" `isPrefixOf` "hawaii joe"
isExist' = "haha" `isPrefixOf` "ha"
isExist'' = "ha" `isPrefixOf` "ha"

isAny = any (>4) [1,2,3]
isAny' = any (=='F') "Frank Sobotka"
isAny'' = any (\x -> x > 5 && x < 10) [1,4,11]

isIn :: (Eq a) => [a] -> [a] -> Bool
needle `isIn` haystack = any (needle `isPrefixOf`) (tails haystack)

isInResult = "art" `isIn` "party"
isInResult' = [1,2] `isIn` [1,3,5]

encode :: Int -> String -> String
encode offset msg = map (\c -> chr $ ord c + offset) msg

caesar = encode 3 "hey mark"
caesar' = encode 5 "please instruct your men"
caesar'' = encode 1 "to party hard"

decode :: Int -> String -> String
decode shift msg = encode (negate shift) msg

decoded = decode 3 "kh|#pdun"
decoded' = decode 5 "uqjfxj%nsxywzhy%~tzw%rjs"
decoded'' = decode 1 "up!qbsuz!ibse"

sumFold = foldl' (+) 0 (replicate 1000000 1)

int2 = digitToInt '2'
intF = digitToInt 'F'

digitSum :: Int -> Int
digitSum = sum . map digitToInt . show

found = find (>4) [3,4,5,6,7]
found' = find odd [2,4,6,8,9]
found'' = find (=='z') "mjolnir"

firstTo40 :: Maybe Int
firstTo40 = find (\x -> digitSum x == 40) [1..]

firstTo :: Int -> Maybe Int
firstTo n = find (\x -> digitSum x == n) [1..]
