type Bits = [Bool]

intToBits' :: Int -> Bits
intToBits' 0 = [False]
intToBits' 1 = [True]
intToBits' n = let next = n `div` 2
                   remainder = n `mod` 2
                   bit = if remainder == 0 then False else True
               in bit : intToBits' next

maxBits :: Int
maxBits = length $ intToBits' maxBound

intToBits :: Int -> Bits
intToBits n = replicate padding False ++ reversed 
    where reversed = reverse $ intToBits' n
          padding = maxBits - (length reversed)

charToBits :: Char -> Bits
charToBits = intToBits . fromEnum
