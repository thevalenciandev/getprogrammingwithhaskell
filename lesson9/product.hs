myProduct :: Num a => [a] -> a
myProduct xs = foldl (*) 1 xs
