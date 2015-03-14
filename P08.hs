-- Problem 8
-- Eliminate consecutive duplicates of list elements

compress []      = []
compress (x:xs)  = x:(_compress x xs)
  where _compress lastElem []     = []
        _compress lastElem (y:ys) =
          if lastElem == y then
            _compress lastElem ys
          else
            y:(_compress y ys)
    
