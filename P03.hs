-- Problem 3
-- Find the kth element of a list.
-- The first element in the list is number 1

elementAt l k = elementAtAcc l 1 k
  where elementAtAcc l n k
          | n < k     = elementAtAcc (tail l) (n+1) k
          | otherwise = head l
