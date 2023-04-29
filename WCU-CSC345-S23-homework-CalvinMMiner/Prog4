module Prog4 where
import Data.Char (toLower, isUpper)

tripleAll :: [Int] -> [(Int, Int)]
tripleAll [] = []
tripleAll x = (a, a*3) : tripleAll (tail x)
   where a = head x

flip' :: [(Int, Int)] -> [(Int, Int)]
flip' [] = []
flip' x = (b, a) : flip' (tail x)
   where (a,b) = head x

sumLastPart :: Int -> [Int] -> Int
sumLastPart target lis = if length lis > target then sumLastPart target (tail lis) else try lis
   where try t = if length t > 1 then head t + try (tail t) else head t


middleProduct :: [Int] -> Int
middleProduct lis = try (init (tail lis ))
   where try t = if length t > 1 then head t * try (tail t) else head t

init' :: [Int] -> [Int]
init' [] = []
init' t = if length t <= 1 then [] else head t : init' (tail t)

lowerOddLetters :: String -> String
lowerOddLetters [] = []
lowerOddLetters (x:xs) = ( if mod (length (x:xs)) 2 == 1  then [toLower x] else  [x] ) ++ lowerOddLetters xs


elemAt :: Int -> [Int] -> Int
elemAt target (x:xs) = if target == 1 then x else elemAt (target-1) xs

iSort' :: [(String, Int)] -> [(String, Int)]
iSort' [] = []
iSort' [x] = [x]
iSort' (x:xs) = insert (iSort' xs)
  where insert [] = [x]
        insert (y:ys)
          | snd x < snd y = x : y : ys
          | otherwise = y : insert ys

middleWord :: String -> String
middleWord a = words a !! 1

lowerFirstLetter :: String -> String
lowerFirstLetter [] = []
lowerFirstLetter (x:xs) = if isUpper x then toLower x : xs else x : lowerFirstLetter xs
