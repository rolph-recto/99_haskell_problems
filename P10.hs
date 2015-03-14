-- Problem 10
-- Implement run-length encoding

pack []     = []
pack (x:xs) = _pack [x] [] xs
  where _pack lastPack acc []     = acc ++ [lastPack]
        _pack lastPack acc (y:ys) =
          if head lastPack == y then
            _pack (y:lastPack) acc ys
          else
            _pack [y] (acc ++ [lastPack]) ys

encode l = foldr (\x acc -> (length x, head x):acc) [] (pack l)
