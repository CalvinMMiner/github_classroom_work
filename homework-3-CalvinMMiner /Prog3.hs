module Prog3 where
import Data.Char (ord, isUpper, toLower)

absAll :: [Int] -> [(Int, Int)]
absAll x = [ (a, abs a) | a <- x ]

flip' :: [(Int, Int)] -> [(Int, Int)]
flip' tup = [ (y,x) | (x,y) <- tup ]


threeMax :: Int -> Int -> Int -> Int
threeMax q w = max (max q w)

middle :: Int -> Int -> Int -> Int
middle q w e
   | ( (q < w) && (w < e) ) || ( (q > w) && (w > e) )= w
   | (w < q) && (q < e) || q == w || q == e  = q
   | otherwise          = e

threeMin :: Int -> Int -> Int -> Int
threeMin q w = min (min q w)

orderTriple :: (Int, Int, Int) -> (Int, Int, Int)
orderTriple (a, b, c) = ( threeMax a b c, middle a b c , threeMin a b c )

asciiNums :: String -> [Int]
asciiNums = map ord

triads :: Int -> [(Int,Int,Int)]
triads x = [ (a,b,c) | c <- [0..x], a <- [0..x], b <- [0..x], a^2 + b^2 ==c^2 ]

sumLastPart :: Int -> [Int] -> Int
sumLastPart _ [] = 0
sumLastPart a (x:xs) | length (x:xs) <= a = x + sumLastPart a xs
                     | otherwise = sumLastPart a xs

middleProduct :: [Int] -> Int
middleProduct [] = 1
middleProduct (x:xs) = try xs where
   try[] = 1
   try (x:xs)| length xs == 1 = x
             | otherwise = x * try xs

init' :: [Int] -> [Int]
init'[] = []
init' (x:xs)| length (x:xs) == 1 = []
             | otherwise = x : init' xs

lowerFirstCharacter :: String -> String
lowerFirstCharacter (x:xs) = if isUpper x then toLower x:xs else x:xs

elemAt :: Int -> [Int] -> Int
elemAt target (x:xs) = if target == 1 then x else elemAt (target-1) xs
