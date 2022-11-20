module Week2 where
-- Write a function clamp that takes three arguments, lo, hi and x (all of type Double) and
-- returns x if it is between lo and hi (inclusive), lo if x is less than lo, and hi if x is greater than
-- hi. You may assume that lo ≤ hi.
-- Consider two versions: one using guards, and another using max and min.

clamp :: Double -> Double -> Double -> Double
clamp lo hi x = if ((max x hi == hi) && (min x lo == lo)) then x else if (max x hi == x) then hi else lo


