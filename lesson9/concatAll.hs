concatAll :: Foldable t => t [a] -> [a]
concatAll xs = foldr (++) [] xs
