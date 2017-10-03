firstNLines :: Int -> String -> String
firstNLines n cs = unlines $ take n $ lines cs
