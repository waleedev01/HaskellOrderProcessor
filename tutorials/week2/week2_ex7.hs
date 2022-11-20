module Week2 where
import Data.Char
-- that converts a character that represents a digit, like '3', to the corresponding integer (3), or 0 if
-- the character does not represent a digit. You may assume that the digit characters are contiguous
-- and in ascending order. You will need to place “import Data.Char” in your module to gain
-- access to the character functions.

charToNum :: Char -> Int
charToNum c = if (isDigit(c)) then digitToInt(c) else 0

