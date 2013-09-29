module Pair (pairMap, withBoth) where

    pairMap f (a, b) = (f a, f b) 

    withBoth f (a, b) = f a b 