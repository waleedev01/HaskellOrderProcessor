module Week2 where
mystery :: Int -> Int -> Int -> Bool
mystery x y z = not (x == y && y == z)