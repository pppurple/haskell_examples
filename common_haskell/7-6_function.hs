-- 二項演算子
(||) :: Bool -> Bool -> Bool
True  || _ = True
False || x = x

-- 前置演算子を``で囲うと二項演算子として使える
-- 二項演算子を()で囲うと前置演算子として使える
(/$$/) :: Int -> Int -> Int
(/$$/) x y =　…