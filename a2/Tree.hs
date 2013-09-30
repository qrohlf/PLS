--let example = Node 1 [Node 5 [Leaf 6, Leaf 7, Node 4 [Leaf 5, Leaf 6]], Node {children=[Leaf 4], value=3}]
data Tree a = Leaf a | Node {value :: a, children :: [Tree a]}

instance (Show a) => Show (Tree a) where
    show (Leaf a) = show a
    show (Node a children ) =  show a ++ foldl1 (++) (map (show' 1 ) children)

show' n (Node a children) = "\n " ++ replicate n ' '  ++ show a  ++ foldl1 (++) (map (show' (n+1)) children)
show' n (Leaf a) = "\n "++replicate n ' '  ++ show a

--instance Functor Tree where
--    fmap t = "foo"