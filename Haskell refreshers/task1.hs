module Tree (Leaf, Branch) where
	data Tree a = Leaf a | Branch (Tree a) (Tree a)

