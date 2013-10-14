import System.IO 
import System.Environment 
import Data.List
-- import "a1.hs"

main = do 
    contents <- getContents
    args <- getArgs 
    putStr (output (take (read (head args)) (sortBy tupleSort (wordCount contents))))

wordCount :: String -> [(String, Int)]
wordCount a = let wordlist = group ( sort (words a) ) in (zip (map (head) wordlist) (map (length) wordlist))

tupleSort (a1, a2) (b1, b2) 
    | b2 < a2 = LT
    | otherwise = GT

output (x:xs) = fst x ++ ":" ++ show (snd x) ++ "\n" ++ output xs
output [] = ""