data FourLetterAlphabet = L1 | L2 | L3 | L4 deriving (Show, Enum, Bounded)

rotN :: (Bounded a, Enum a) => Int -> a -> a
rotN n letter = let middle = n `div` 2
                    letter' = fromEnum letter
                    offset = (letter' + middle) `mod` n
                in toEnum offset

rotChar :: Char -> Char
rotChar c = rotN sizeOfAlphabet c
  where sizeOfAlphabet = 1 + fromEnum (maxBound :: Char)
