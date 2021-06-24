remove :: (a -> Bool) -> [a] -> [a]
remove p []     = []
remove p (x:xs) = if p x 
                  then remove p xs
                  else x:(remove p xs)
