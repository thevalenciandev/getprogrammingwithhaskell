-- An example cup of coffee just for playing on GHCI
cuppa = cup 5

-- Coffee functions
cup :: Num a => a -> (b -> a)
cup flOz = \_ -> flOz

getOz aCup = aCup (\flOz -> flOz)

drink aCup ozDrank = let oz = getOz aCup
                         leftoz = oz - ozDrank
                     in if leftoz <= 0 then cup 0 else cup leftoz

isEmpty aCup = getOz aCup == 0
