addThree :: Int -> Int -> Int -> Int
addThree i j k = i + j + k

-- セクション
increment :: Int -> Int
increment n = (+ 1) n

increment' :: Int -> Int
increment' n = (1 +) n


result = map (+ 7) [1..5]

filtered = filter (/= '\r') "aaa\rbbb\rccc"

zipWithNumber :: [String] -> [(Int, String)]
zipWithNumber xs = zip [1..] xs

zipWithNumber' :: [String] -> [(Int, String)]
zipWithNumber' = zip [1..]
