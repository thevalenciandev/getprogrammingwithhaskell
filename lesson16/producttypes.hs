data AuthorName = AuthorName {
    name    :: String
  , surname :: String
} deriving Show

data Book = Book {
    author :: AuthorName
  , isbn   :: String
  , title  :: String
  , year   :: Int
  , price  :: Double
} deriving Show
