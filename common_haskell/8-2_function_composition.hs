numberOfLines :: String -> Int
numberOfLines cs = length $ lines cs

sortLines :: String -> String
sortLines cs = unlines $ sort $ lines cs

tac :: String -> String
tac cs = unlines $ reverse $ reverse $ reverse $ unlines cs

-- 関数合成
numberOfLines' :: String -> Int
numberOfLines' = length . lines

sortLines' :: String -> String
sortLines' = unlines . sort . lines

tac' :: String -> String
tac' = unlines . reverse . reverse . reverse . unlines
