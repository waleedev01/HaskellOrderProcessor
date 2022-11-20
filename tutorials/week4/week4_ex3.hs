module Strings where
import Data.Char
capitalize :: String -> String
capitalize s =  [toUpper c | c <- s]
capitalizeLetters :: String -> String
capitalizeLetters s =  [toUpper c | c <- s, isAlpha c]
