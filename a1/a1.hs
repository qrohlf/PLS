--Write the following. Include a type declaration for each value or function. Functions should have the most general types possible, so [a] -> a is preferable to [Char] -> Char. You have considerable freedom in your definitions, but you should not define a function with one word (because there happens to be an identical function built in) or define a value directly (instead of constructing it with, e.g., a list comprehension).
--A function antepenultimate that takes a list and returns the third-to-last element of that set.
--A function indexOf that takes an element and a list and returns the zero-based index where that element first appears (or -1 if it doesn't).
--A function upperCase that takes a letter and returns the upper case version of that letter. You are not responsible for non-letter input.
--A function studlyCaps that takes a string of words (with spaces), smashes them together, and capitalizes each word but the first.
--A function duplicates that takes a list and returns true if any two elements in the list are the same.
--A list of pairs rolls showing all possible rolls of two six-sided dice.
--A function counts that takes a list and returns a list of pairs, with each pair containing an element and the number of times it appears.
--A list of pairs sums, showing how often each sum appears when rolling two six-sided dice.
import Data.List


antepenultimate :: [a] -> a
antepenultimate xs = xs !! (length xs - 3) 

indexOf :: Eq a => a -> [a] -> Int
indexOf elem xs = head [ fst x | x <- zip [0..] xs, snd x == elem]

upperCase :: Char -> Char
upperCase c = head [snd x | x <- zip ['a'..'z'] ['A'..'Z'], fst x == c || snd x == c]

studlyCaps :: String -> String
studlyCaps string = concat [ [upperCase (head word)] ++ (tail word) | word <- words string]

duplicates :: Eq a => [a] -> Bool
duplicates ys = sum [sum [ 1 | y <- ys, y == x] | x <- ys] > (length ys)

rolls :: [[Int]]
rolls = [[x, y] | x <- [1..6], y <- [1..6] ]

counts :: Ord a => [a] -> [(a, Int)]
counts ys = let items = group ( sort ys ) in (zip (map (head) items) (map (length) items))

removeDuplicates :: Eq a => [a] -> [a]
removeDuplicates [] = []
removeDuplicates [x] = [x]
removeDuplicates (x : xs)
    | x `elem` xs = removeDuplicates xs
    | otherwise =  x : removeDuplicates xs

sums :: [(Int, Int)] 
sums = counts (map (sum) rolls)