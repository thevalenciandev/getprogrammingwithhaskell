data Name = Name String String
data Sex = Male | Female | Cat

data Patient = Patient { name :: Name
                       , sex :: Sex
                       , age :: Int
                       , height :: Int
                       , weight :: Int }

patient1 = Patient { name = Name "John" "Smith", sex = Male, age = 25, height = 180, weight = 74 }
