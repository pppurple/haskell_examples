lostNumber = [4,8,15,16,23,42]

-- 連結
plus = [1,2,3,4] ++ [9,10,11,12]

str = "hello" ++ " " ++ "world"

chars = ['w','o'] ++ ['o','t']

smallcat = 'A':" SMALL CAT"

add_head = 5:[1,2,3,4,5]

add_tail = [1,2,3,4] ++ [5]

-- 先頭からの位置でアクセス
list_get = "Steve Buscemi" !! 6

list_get2 = [1,2,3,4,5,6] !! 2

-- リストのネスト
b = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]

-- その他の操作
list_head = head [5,4,3,2,1]

list_tail = tail [5,4,3,2,1]

list_last = last [5,4,3,2,1]

list_init = init [5,4,3,2,1]

list_length = length [5,4,3,2,1]

list_null = null []

list_not_null = null [5,4,3,2,1]

list_reverse = reverse [5,4,3,2,1]

take3 = take 3 [5,4,3,2,1]

take5 = take 5 [1,2]

take0 = take 0 [6,6,6]

drop3 = drop 3 [5,4,3,2,1]

drop0 = drop 0 [5,4,3,2,1]

drop100 = drop 100 [5,4,3,2,1]

list_max = maximum [1,9,2,4,8]

list_min = minimum [1,9,2,4,8]

list_sum = sum [1,2,3,4]

list_product = product [2,3,4]

elem4 = 4 `elem` [1,9,2,4,8]

elem7 = 7 `elem` [1,9,2,4,8]
