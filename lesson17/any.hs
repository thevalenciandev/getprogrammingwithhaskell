any' :: (a -> Bool) -> [a] -> Bool
any' p = foldl (\acc x -> acc || (p x)) False
