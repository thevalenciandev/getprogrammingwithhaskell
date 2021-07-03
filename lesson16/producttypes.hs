type FirstName = String
type LastName  = String
type MiddleName = String

data Name = Name FirstName LastName | NameWithMiddle FirstName MiddleName LastName deriving Show

data Book = Book {
    author :: Name
  , isbn   :: String
  , title  :: String
  , year   :: Int
  , price  :: Double
} deriving Show

data Author = Author Name deriving Show
data Artist = Person Name | Band String deriving Show

data Creator = AuthorCreator Author | ArtistCreator Artist deriving Show

-- Some dummy data
c1 = AuthorCreator $ Author $ Name "John" "Salchichon"
c2 = AuthorCreator $ Author $ NameWithMiddle "John" "Salchichon" "Rambo"
