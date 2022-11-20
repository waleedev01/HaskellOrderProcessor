module Week5 where
import Data.Char

capitalize :: String -> String
capitalize s = map toUpper s
capitals :: String -> String
capitals s = filter isUpper s
capitalizeLetters :: String -> String
capitalizeLetters s = map toUpper (filter isLetter s)