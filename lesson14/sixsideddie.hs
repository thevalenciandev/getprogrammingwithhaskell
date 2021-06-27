data SixSidedDie = S1 | S2 | S3 | S4 | S5 | S6

instance Show SixSidedDie where
  -- show :: a -> String
  show S1 = "one"
  show S2 = "two"
  show S3 = "three"
  show S4 = "four"
  show S5 = "five"
  show S6 = "six"

instance Eq SixSidedDie where
  -- (==) :: a -> a -> Bool
  (==) S6 S6 = True
  (==) S5 S5 = True
  (==) S4 S4 = True
  (==) S3 S3 = True
  (==) S2 S2 = True
  (==) S1 S1 = True
  (==) _ _ = False

instance Ord SixSidedDie where
  -- compare :: a -> a -> Bool
  compare S1 S1 = EQ
  compare S1 _  = LT
  compare _ S1  = GT
  compare S2 S2 = EQ
  compare S2 _  = LT
  compare _ S2  = GT
  compare S3 S3 = EQ
  compare S3 _  = LT
  compare _ S3  = GT
  compare S4 S4 = EQ
  compare S4 _  = LT
  compare _ S4  = GT
  compare S5 S5 = EQ
  compare S5 _  = LT
  compare _ S5  = GT
  compare S6 S6 = EQ
