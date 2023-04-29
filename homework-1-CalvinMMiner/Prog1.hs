module Prog1 where

isThreeDigitPositive :: Int -> Bool
isThreeDigitPositive a = a >= 100 && a < 1000

dividesEvenly :: Integer -> Integer -> Bool
dividesEvenly a b = mod a b == 0

middle :: Integer -> Integer -> Integer -> Integer
middle q w e 
   | ( (q < w) && (w < e) ) || ( (q > w) && (w > e) )= w
   | (w < q) && (q < e) = q
   | q == w  && q < e   = q
   | q == e  && q < w   = q
   | otherwise          = e
 
nor :: Bool -> Bool -> Bool
nor x y = not x && not y

f2c :: Float -> Float
f2c q =  (q-32)*(5/9)

floorDecimal :: Float -> Float
floorDecimal a = fromIntegral (floor a)

letterGrade :: Integer -> String
letterGrade a 
   | 93 <= a && a <= 100 = "A"  
   | 90 <= a && a <= 92  = "A-" 
   | 87 <= a && a <= 89  = "B+"  
   | 83 <= a && a <= 86  = "B"
   | 80 <= a && a <= 82  = "B-" 
   | 77 <= a && a <= 79  = "C+"      
   | 73 <= a && a <= 76  = "C"  
   | 70 <= a && a <= 72  = "C-"  
   | 67 <= a && a <= 69  = "D+" 
   | 63 <= a && a <= 66  = "D"  
   | 60 <= a && a <= 62  = "D-"  
   |            a <  60  = "F"  
   |otherwise            = "error"

averageThree :: Integer -> Integer -> Integer -> Float
averageThree q w e = fromIntegral (q + w + e)/3


howManyAboveAverage :: Integer -> Integer -> Integer -> Integer
howManyAboveAverage q w e 
   | fromIntegral q > averageThree q w e && ( fromIntegral w > averageThree q w e || fromIntegral e > averageThree q w e )= 2
   | fromIntegral e > averageThree q w e && fromIntegral w > averageThree q w e = 2
   | fromIntegral q > averageThree q w e  || fromIntegral w > averageThree q w e || fromIntegral e > averageThree q w e= 1
   | otherwise = 0
