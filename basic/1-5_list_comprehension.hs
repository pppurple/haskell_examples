result = [x*2 | x <- [1..10]]

result2 = [x*2 | x <- [1..10], x*2 >= 12]

result3 = [x | x <- [50..100], x `mod` 7 == 3]

boomBang xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

result_boomBang = boomBang [7..13]

filtered = [x | x <- [10..20], x /= 13, x /= 15, x /= 19]

combination = [x+y | x <- [1,2,3], y <- [10,100,1000]]

combination2 = [x*y | x <- [2,5,10], y <- [8,10,11]]

combi_filtered = [x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]

nouns = ["hobo", "frog", "pope"]

adjectives = ["lazy", "grouchy", "scheming"]

strs = [adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns]

length' xs = sum [1 | _ <- xs]

removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

xxs = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]

result_xxs = [ [x | x <- xs, even x] | xs <- xxs]
