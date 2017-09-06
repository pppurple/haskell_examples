--data List a = Empty | Cons a (List a)
--    deriving (Show, Read, Eq, Ord)

--data List a = Empty | Cons { listhead :: a, listTail :: List a}
--    deriving (Show, Read, Eq, Ord)

-- Improve List
infixr 5 :-:
data List a = Empty | a :-: (List a)
    deriving (Show, Read, Eq, Ord)

a = 3 :-: 4 :-: 5 :-: Empty

infixr 5 ^++
(^++) :: List a -> List a -> List a
Empty ^++ ys = ys
(x :-: xs) ^++ ys = x :-: (xs ^++ ys)

aa = 3 :-: 4 :-: 5 :-: Empty
bb = 6 :-: 7 :-: Empty
cc = aa ^++ bb
