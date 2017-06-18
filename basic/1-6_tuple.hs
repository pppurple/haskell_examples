tuple1 = (1, 3)

tuple2 = (3, 'a', "hello")

tuple3 = (50, 50.4, "hello", 'b')

fst1 = fst (8, 11)

fst2 = fst ("Wow", False)

second1 = snd (8, 11)

second2 = snd ("Wow", False)

zipped = zip [1,2,3,4,5] [5,5,5,5,5]

zipped2 = zip [1..5] ["one", "two", "three", "four", "five"]

zipped3 = zip [1..] ["apple", "orange", "cherry", "mango"]

triples = [(a,b,c) | c <- [1..10], a <- [1..10], b <- [1..10]]

rightTriangles = [(a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2]

rightTriangles' = [(a,b,c) | c <- [1..10], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2, a+b+c == 24]
