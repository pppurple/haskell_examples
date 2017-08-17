module Shapes
( Point(..)
, Shape(..)
, area
, nudge
, baseCircle
, baseRect
 ) where

data Shape = Circle Float Float Float |
             Rectangle Float Float Float Float
             deriving (Show)

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

circleArea = area $ Circle 10 20 10
rectArea = area $ Rectangle 0 0 100 100

showCircle = Circle 10 20 5
showRect = Rectangle 50 230 60 90

-- 半径だけ違う同心円のリスト
circleList = map (Circle 10 20) [4,5,6,6]

-- コンストラクタが1つの場合は、データ型とコンストラクタを同じ名前にするのが慣例
data Point = Point Float Float deriving (Show)
data Shape' = Circle' Point Float |
              Rectangle' Point Point deriving (Show)

area' :: Shape' -> Float
area' (Circle' _ r) = pi * r ^ 2
area' (Rectangle' (Point x1 y1) (Point x2 y2))
    = (abs $ x2 - x1) * (abs $ y2 - y1)

circleArea' = area' (Circle' (Point 0 0) 24)
rectArea' = area' (Rectangle' (Point 0 0) (Point 100 100))

-- Shape'を動かす関数
nudge :: Shape' -> Float -> Float -> Shape'
nudge (Circle' (Point x y) r) a b = Circle' (Point (x + a) (y + b)) r
nudge (Rectangle' (Point x1 y1) (Point x2 y2)) a b
    = Rectangle' (Point (x1 + a) (y1 + b)) (Point (x2 + a) (y2 + b))

nudged = nudge (Circle' (Point 34 34) 10) 5 10

-- 原点(0,0)を中心とした円,長方形を作る
baseCircle :: Float -> Shape'
baseCircle r = Circle' (Point 0 0) r

baseRect :: Float -> Float -> Shape'
baseRect width height = Rectangle' (Point 0 0) (Point width height)

nudged' = nudge (baseCircle 5) 10 20
nudged'' = nudge (baseRect 40 100) 60 23

