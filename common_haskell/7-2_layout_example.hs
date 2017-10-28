-- ブレース構文
main = do { cs <- getContents; putStr cs }

-- オフサイドルール
main = do cs <- getContents
          putStr cs

-- オフサイドラインはdoやofより浅くてもよい
main = do
    cs <- getContents
    putStr cs
