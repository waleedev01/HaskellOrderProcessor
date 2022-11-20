module Week2 where
-- Write a function threeDifferent that takes three integer arguments and returns True if its arguments are all different from each other.
threeDifferent :: Integer -> Integer -> Integer -> Bool
threeDifferent x y z =  not (x == y) && not (x == z) && not (y == z)
