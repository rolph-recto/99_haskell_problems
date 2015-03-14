-- Problem 9
-- Pack consecutive duplicates of list elements into sublists
-- ex. pack [1,1,1,2,2,3,3,3] = [[1,1,1],[2,2],[3,3,3]]

pack []     = []
pack (x:xs) = _pack [x] [] xs
  where _pack lastPack acc []     = acc ++ [lastPack]
        _pack lastPack acc (y:ys) =
          if head lastPack == y then
            _pack (y:lastPack) acc ys
          else
            _pack [y] (acc ++ [lastPack]) ys
