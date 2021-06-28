data SixSidedDie = S1 | S2 | S3 | S4 | S5 | S6 deriving (Eq, Ord)

instance Show SixSidedDie where
  -- show :: a -> String
  show S1 = "one"
  show S2 = "two"
  show S3 = "three"
  show S4 = "four"
  show S5 = "five"
  show S6 = "six"

instance Enum SixSidedDie where
  -- toEnum :: Int -> SixSidedSide
  toEnum 0 = S1
  toEnum 1 = S2
  toEnum 2 = S3
  toEnum 3 = S4
  toEnum 4 = S5
  toEnum 5 = S6
  toEnum _ = error "No such value"
  -- fromEnum :: SixSidedSide -> Int
  fromEnum S1 = 0
  fromEnum S2 = 1
  fromEnum S3 = 2
  fromEnum S4 = 3
  fromEnum S5 = 4
  fromEnum S6 = 5
