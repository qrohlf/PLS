import Control.Arrow
import Data.List
import System.Environment

removeDuplicates :: Eq a => [a] -> [a]
removeDuplicates [] = []
removeDuplicates [x] = [x]
removeDuplicates (x : xs) = x : removeDuplicates (filter (\y -> not(x == y)) xs)

wordCount :: String -> [(String, Int)]
wordCount = map (head &&& length) . group . sort . words

tupleSort (a1, a2) (b1, b2)
	| b2 < a2 = LT
	| otherwise = GT

main = do
    contents <- getContents
    print (take 10 (sortBy tupleSort (wordCount contents)))
