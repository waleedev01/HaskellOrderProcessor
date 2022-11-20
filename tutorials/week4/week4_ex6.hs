module Week4 where
average :: [Double] -> Double
average numbers = sum(numbers) / (fromIntegral (length(numbers)))