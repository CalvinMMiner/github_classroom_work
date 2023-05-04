
1. Write a function `sumSqNeg` that computes the "sum of squares of negatives". _You must use one or more higher-order functions: `map`, `filter`, `foldr`._  
  `sumSqNeg :: [Int] -> Int`
1. Write a function `containing` (without any higher order functions) that returns whether each element in the first list is also in the second list.  
  `containing :: Eq a => [a] -> [a] -> Bool`
1. Write a function `total` that applies the function (first argument) to every element in the list (second argument) and sums the result. _You must use one or more higher-order functions: `map`, `filter`, `foldr`._
  `total :: (Int -> Int) -> [Int] -> Int`
1. Write a function `containing'` (with higher order functions) that returns whether each element in the first list is also in the second list. _You must use one or more higher-order functions: `map`, `filter`, `foldr`._  
  `containing' :: Eq a => [a] -> [a] -> Bool`
1. Write a function `lengths` that returns a list of lengths of the given strings. _You must use one or more higher-order functions: `map`, `filter`, `foldr`._
  `lengths :: [String] -> [Int]`
1. Write a function `product'` that returns the product of a nonempty list of numbers. _You must use one or more higher-order functions: `map`, `filter`, `foldr`._  
  `product' :: Num a => [a] -> a`
1. Write a function `max'` that returns the largest element of a nonempty list of two digit numbers. _You must use one or more higher-order functions: `map`, `filter`, `foldr`._  
  `max' :: Num a => Ord a => [a] -> a`
1. Write a function `append'` that appends two lists. _You must use one or more higher-order functions: `map`, `filter`, `foldr`._  
  `append' :: [a] -> [a] -> [a]`
1. Write a function `filterFirst` that removes the first element from the list (second argument) that does not satisfy a given predicate function (first argument). _You must use one or more higher-order functions: `map`, `filter`, `foldr`._  
  `filterFirst :: (a -> Bool) -> [a] -> [a]`
