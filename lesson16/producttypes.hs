type FirstName = String
type LastName  = String
type MiddleName = String

data Name = Name FirstName LastName | NameWithMiddle FirstName MiddleName LastName deriving Show

data Author = Author Name deriving Show
data Artist = Person Name | Band String deriving Show
data Creator = AuthorCreator Author | ArtistCreator Artist deriving Show

data Book = Book {
    author :: Creator
  , isbn   :: String
  , title  :: String
  , year   :: Int
  , bookPrice  :: Double
} deriving Show

data VinylRecord = VinylRecord {
    artist :: Creator
  , recordTitle  :: String -- can't use title: conflicts with the Book one
  , recordYear   :: Int    -- can't use year: conflicts with the Book one
  , recordPrice  :: Double -- can't use price: conflicts with the Book one
} deriving Show

data CollectibleToy = CollectibleToy {
    name :: String
  , description :: String
  , toyPrice :: Double
} deriving Show

data StoreItem = BookItem Book | RecordItem VinylRecord | ToyItem CollectibleToy deriving Show

price :: StoreItem -> Double
price (BookItem b)   = bookPrice b
price (RecordItem r) = recordPrice r
price (ToyItem t)    = toyPrice t

-- Some dummy data
c1 = AuthorCreator $ Author $ Name "John" "Salchichon"
c2 = AuthorCreator $ Author $ NameWithMiddle "John" "Salchichon" "Rambo"
c3 = ArtistCreator $ Band "Metallica"
i1 = BookItem (Book {author = c1, isbn = "ISBN123", title = "War stories", year = 1984, bookPrice = 4.99})
i2 = RecordItem (VinylRecord {artist = c3, recordTitle = "Garage Days Re0Revisited", recordYear = 1987, recordPrice = 7.99})
