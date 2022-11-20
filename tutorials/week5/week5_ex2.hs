module Week5 where

map  (^2) [1..20]

takeWhile (< 500) (map (^2) [1..])

map  (^2) [500..1000]

takeWhile (< 1000 ) (dropWhile (<= 500) (map (^2) [1..]))