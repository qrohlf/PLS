module Pairs (pairMap, withBoth) where

    pairMap :: (t -> t1) -> (t, t) -> (t1, t1)
    pairMap f (a, b) = (f a, f b) 

    withBoth :: (t1 -> t2 -> t) -> (t1, t2) -> t
    withBoth f (a, b) = f a b 