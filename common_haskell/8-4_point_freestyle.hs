import  Data.List

sortLines :: String -> String
sortLines cs = unlines $ sort $ lines cs

sortLines' :: String -> String
sortLines' = unlines . sort . lines

zipLineNumber :: [String] -> [(Int, String)]
zipLineNumber xs = zip [1..] xs

zipLineNumber' :: [String] -> [(Int, String)]
zipLineNumber' = zip [1..]

-- head
firstNLines :: Int -> String -> String
firstNLines n cs = unlines $ take n $ lines cs

firstNLines' :: Int -> String -> String
firstNLines' n = unlines . take n . lines

-- fgrep
