data Name = Name (String, String) deriving (Show, Eq)

instance Ord Name where
  -- compare :: a -> a -> Bool
  compare (Name (n1,s1)) (Name (n2,s2)) = compare (s1,n1) (s2,n2)

-- Some data to play with
names :: [Name]
names = [Name ("Emil", "Cioran"), Name ("Eugene", "Thacker"), Name ("Friedrich","Nietzsche")]
