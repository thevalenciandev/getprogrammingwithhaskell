type Events = [String]
type Probs = [Double]

-- Probability table
data PTable = PTable Events Probs

createPTable :: Events -> Probs -> PTable
createPTable e p = PTable e normalisedProbs
    where totalProbs = sum p
          normalisedProbs = map (\x -> x/totalProbs) p

showPair :: String -> Double -> String
showPair event prob = mconcat [event,"|",show prob,"\n"]

instance Show PTable where
    show (PTable events probs) = mconcat pairs
        where pairs = zipWith showPair events probs
