cup flOz = \_ -> flOz

getOz aCup = aCup (\flOz -> flOz)

drink aCup ozDrank = let oz = getOz aCup
                         leftoz = oz - ozDrank
                     in if leftoz <= 0 then cup 0 else cup leftoz
