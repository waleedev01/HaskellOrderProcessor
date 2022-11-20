module Week4 where
import Data.Char

capitalizeLetters :: String -> String
capitalizeLetters s =  [toUpper c | c <- s, isAlpha c]
isPalindrome :: String -> Bool
isPalindrome text = reverse(text) == text
isPalindromeLiberal :: String -> Bool
isPalindromeLiberal text = reverse(capitalizeLetters(text)) == capitalizeLetters(text)