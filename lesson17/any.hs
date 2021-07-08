any' :: (a -> Bool) -> [a] -> Bool
any' p = foldl (||) False . (map p)
