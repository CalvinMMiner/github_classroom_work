module Prog5 where

reverse' :: [a] -> [a]
reverse' [] = []
reverse' lis = last lis : reverse' (init lis)

isPalindrome :: String -> Bool
isPalindrome lis = lis == reverse' lis

type TimeStamp = (Int, Int, Int)

first :: (Int, Int, Int) -> Int
first (x, _, _) = x

second :: (Int, Int, Int) -> Int
second (_, y, _) = y

lASt :: (Int, Int, Int) -> Int
lASt (_, _, z) = z

totalSeconds :: TimeStamp -> Int
totalSeconds time = first time * 60 * 60  + second time * 60+ lASt time

isValid :: TimeStamp -> Bool
isValid time = value (first time) && value (second time) && value (lASt time)  where
  value x = x >= 0 && x <= 59

isShorter :: TimeStamp -> TimeStamp -> Int
isShorter one two
  | totalSeconds one <  totalSeconds two =  1
  | totalSeconds one >  totalSeconds two = -1
  | totalSeconds one == totalSeconds two =  0

time2Str :: TimeStamp -> String
time2Str time = show' (first time) ++ ":" ++ show' (second time) ++ ":" ++ show' (lASt time) where
  show' x = if length (show x) == 2 then show x else  "0" ++ show x

type Date = (Int, Int, Int)

data Season = Winter | Spring | Summer | Fall
  deriving (Show, Eq)

monthLookup :: Int -> Int
monthLookup date
  | date <= 31 = 1
  | date <= 59 = 2
  | date <= 90 = 3
  | date <= 120 = 4
  | date <= 151 = 5
  | date <= 181 = 6
  | date <= 212 = 7
  | date <= 243 = 8
  | date <= 273 = 9
  | date <= 304 = 10
  | date <= 334 = 11
  | date <= 365 = 12

monthRange :: Int -> Int -> [Int]
monthRange day1 day2 = if day2 < day1 then [monthLookup day2] else [(monthLookup day1) .. (monthLookup day2)]

validDate :: Date -> Bool
validDate date = second date < 28

season :: Date -> Season
season date 
  | first date == 3  || first date == 4  || first date == 5  = Spring
  | first date == 6  || first date == 7  || first date == 8  = Summer
  | first date == 9  || first date == 10 || first date == 11 = Fall
  | first date == 12 || first date == 1  || first date == 2  = Winter
