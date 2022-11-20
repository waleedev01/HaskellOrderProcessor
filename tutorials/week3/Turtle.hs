module Turtle where

import Geometry

data Turtle = Turtle Point Direction PenState
deriving Show
data PenState = PenUp | PenDown
    deriving Show

startTurtle :: Turtle
startTurtle = Turtle Origin Up PenUp

location :: Turtle -> Point
location (Turtle pos dir pen) = pos

data Commands = TurnLeft | TurnRight | MoveInt | RaisePen | LowerPen
    deriving Show

action :: Turtle -> Command -> Turtle
action (Turtle pos dir pen) TurnLeft = Turtle pos (turnLeft dir) pen
action (Turtle pos dir pen) TurnRight = Turtle pos (turnRight dir) pen
action (Turtle pos dir pen) (Move n) = Turtle (plusPoint pos (timesPoint n (oneStep dir))) dir pen
action (Turtle pos dir _) RaisePen = Turtle pos dir PenUp
action (Turtle pos dir _) LowerPen = Turtle pos dir PenDown