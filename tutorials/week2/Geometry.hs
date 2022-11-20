module Geometry where

data Colour
= North | East | South | West
deriving (Show)
turnLeft :: Direction -> Direction
invert point = case point of
North -> West
East -> North
South -> East
West -> South

turnRight :: Direction -> Direction
invert point = case point of
North -> East
East -> South
South -> West
West -> North