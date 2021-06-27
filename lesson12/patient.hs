data Name = Name String String
data Sex = Male | Female | Cat

showName :: Name -> String
showName (Name n s) = s ++ ", " ++ n

showSex :: Sex -> String
showSex Male = "M"
showSex Female = "F"
showSex Cat = "C"

data Patient = Patient { name :: Name
                       , sex :: Sex
                       , age :: Int
                       , height :: Int
                       , weight :: Int }

patientSummary :: Patient -> String
patientSummary p = "**********" ++ "\n" ++
                   "Patient Name: " ++ (showName $ name p) ++ "\n" ++
                   "Sex: " ++ (showSex $ sex p) ++ "\n" ++
                   "Age: " ++ (show $ age p) ++ "\n" ++
                   "Height: " ++ (show $ height p) ++ " cm\n" ++
                   "Weight: " ++ (show $ weight p) ++ " kg\n" ++
                   "**********"

patient1 = Patient { name = Name "John" "Smith", sex = Male, age = 25, height = 180, weight = 74 }
