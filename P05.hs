-- Problem 5
-- Reverse a list

myFoldl f acc [] = acc
myFoldl f acc (x:xs) = myFoldl f (f x acc) xs

myFoldr f acc [] = acc
myFoldr f acc (x:xs) = f x (myFoldr f acc xs)

myReverse l = myFoldl (\x acc -> x:acc) [] l
