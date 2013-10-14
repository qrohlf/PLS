{-In a file Tree.hs, define a data type Tree that represents a
general (not necessarily binary) tree. A Tree is either
 a Leaf with a value or a Node with a value and a list of 
 children (themselves Trees). Use record syntax so that arguments
to value constructors can optionally be specified out of order.
Make your type an instance of the typeclasses Show and Functor. 
Your definition of show should return a nicely indented 
"book index" style string representing the tree. -}
data Tree a = Leaf {value :: a} | Node {value :: a, children :: [Tree a]}

instance (Show a) => Show (Tree a) where
    show (Leaf a) = show a
    show (Node a children ) =  show a ++ foldl1 (++) (map (show' 0 ) children)

show' n (Node a children) = "\n " ++ replicate n ' '  ++ show a  ++ foldl1 (++) (map (show' (n+1)) children)
show' n (Leaf a) = "\n "++replicate n ' '  ++ show a

instance Functor Tree where
	fmap f (Leaf a) = Leaf (f a) 
	fmap f (Node a children) = Node (f a) (map (fmap f) children)