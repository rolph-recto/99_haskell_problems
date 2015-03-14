-- Problem 4
-- Find the number of elements in a list

myLength :: [a] -> Int
myLength l = foldr (\x acc -> acc + 1) 0 l
