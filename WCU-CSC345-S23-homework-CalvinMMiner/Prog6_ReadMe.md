Code the following Haskell functions in a file named `Prog6.hs`. I've given you the starter code already. Complete these functions by replacing the line `error "undefined"` in them. _In your solution, you may define helper functions that are called by the original function._

If you cannot figure out one of the problems, do not remove the function, but leave it in as `error`.

1. Write a function `safeLast` that behaves similarly to the built-in `last` function, except that it returns `Nothing` if an empty list is passed as an argument.  
   `safeLast :: [Int] -> Maybe Int`
1. Write a function `safeCount` that takes an item to search for and a list of numbers, and returns `Nothing` if the list is empty; `Just 0` if the item doesn't appear in the list; or `Just x` where x is the number of times that the item appears in the list.  
   `safeCount :: Int -> [Int] -> Maybe Int`

<hr>

In the following functions, we are going to implement a Set algebraic data type by taking advantage of built-in Haskell lists. But, we'll have to manually check that we never violate most important property of sets: _that there are no duplicate items_. Use the following type constructor and data constructors. (Note: Haskell also has a built-in Set data type, that is much more advanced. We'll call our data type `Set345` to  distinguish it. Our data type is completely different from the built-in Set. Googling will be a waste of time; instead, spend that time on understanding your notes on type constructors and data constructors.)

 ```haskell
   data Set345 = NonEmptySet [Int]
               | EmptySet
       deriving Show
 ```

1. Write a function `singletonOrEmpty` that takes a set and returns if it is empty or is a singleton.  
   `singletonOrEmpty :: Set345 -> Bool`
1. Write a function `member` that checks whether the given item is present in the given set.  
   `member :: Int -> Set345 -> Bool`
1. Write a function `size` that returns the number of elements in a given set.
   `size :: Set345 -> Int`  
1. Write a function `ins` that inserts the given item into a set. (If the item is already in the set, simply return the set unmodified.) (Hint: you may want to program a helper function that takes two Sets and merges them into one.)  
   `ins :: Int -> Set345 -> Set345`
1. Write a function `union'` that takes two sets and returns the union of both sets.  
   `union' :: Set345 -> Set345 -> Set345`
1. Write a function `intersection'` that takes two sets and returns the intersection of both sets.  
   `intersection' :: Set345 -> Set345 -> Set345`

<hr>

The next two questions involve I/O:

1. Write a function `countLetters` that inputs three Strings from the user on separate lines (feel free to prompt the user to enter each String if you wish), and returns the number of letters in each entered String as a list.
   `countLetters :: IO [Int]`
1. Write a function `and'` that takes as an argument a Boolean value and performs a conjunction ("ands it") with an inputed String "True" or "False" from the user, and returns the Boolean value result.  
   `and' :: Bool -> IO Bool`
