module Week3 where
pairMaybe :: Maybe a -> Maybe b -> Maybe (a,b)
pairMaybe (Just x) (Just y) = Just (x,y)
pairMaybe _ _ = Nothing