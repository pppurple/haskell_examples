-- let式
f n = let x = n + 1
          y = n + 2
          z = n + 3
        in x * y * z

-- where節
resolveY2K y = base + y where base = 1900

expandTab :: Int -> String -> String
expandTab width cs = concatMap translate cs
    where
        translate '\t' = replicate width ' '
        translate c    = [c]


foo i
    | i > 0  = square (i + 1)
    | i == 0 = square 0
    | i < 0  = square (i - 1)
    where
        square n = n * n

-- let: 単純に新しい変数を導入
-- where: 関数内で使われる関数を定義
