module Week3 where
safeDiv :: Int -> Int -> Maybe Int
safeDiv a b 
    | b/=0 = Just (a `div` b)
    | otherwise = Nothing