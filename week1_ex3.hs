module Week1 where
mile :: Double
mile = 1.609344
-- Convert miles to km
milesToKm :: Double -> Double
milesToKm n = n*mile
-- Triple an integer.
kmToMiles :: Double -> Double
kmToMiles n = n/mile