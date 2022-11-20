module Week4 where
import Data.List
frequency :: [Char] -> [(Char, Int)]
frequency text = zip(group text, repeat)