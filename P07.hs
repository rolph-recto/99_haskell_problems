-- Problem 7
-- Flatten a nested list structure

data NestedList a = Elem a | List [NestedList a]

myFlatten (Elem x) = [x]
myFlatten (List nl) = foldr (\x acc -> (myFlatten x) ++ acc) [] nl

