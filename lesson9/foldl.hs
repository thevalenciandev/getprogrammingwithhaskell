foldl' :: (b -> a -> b) -> b -> [a] -> b
foldl' _ x []      = x
foldl' fn x (y:ys) = let x' = fn x y
                     in foldl' fn x' ys
