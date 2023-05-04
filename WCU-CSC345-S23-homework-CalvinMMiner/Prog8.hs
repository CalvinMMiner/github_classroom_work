module Prog8 where

sumSqNeg :: [Int] -> Int
sumSqNeg list = sum (map (^2) (filter (<0) list))

containing :: Eq a => [a] -> [a] -> Bool
containing xs ys = xs == eq xs ys where
    eq [] _ = []
    eq (x:xs) ys = [q| q <- ys, q == x] ++ eq xs ys

total :: (Int -> Int) -> [Int] -> Int
total op list = sum (map op list)

containing' :: Eq a => [a] -> [a] -> Bool
containing' xs ys = all (`elem` ys) xs

lengths :: [String] -> [Int]
lengths = map length

product' :: Num a => [a] -> a
product'  = foldr (*) 1

max' :: Num a => Ord a => [a] -> a
max' nums = foldr max (-11) (filter (>10) nums)

append' :: [a] -> [a] -> [a]
append' first last  = foldr (:) last first

filterFirst :: (a -> Bool) -> [a] -> [a]
filterFirst predicate (x:xs) 
    | predicate x  = x: filterFirst predicate xs
    | otherwise    = xs 
