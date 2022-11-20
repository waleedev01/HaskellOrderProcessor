module Week4 where
backwards :: String -> String
backwards text =  unwords (reverse (words text))
reverseWord :: String -> String
reverseWord text =  unwords [reverse w | w <- words text]
