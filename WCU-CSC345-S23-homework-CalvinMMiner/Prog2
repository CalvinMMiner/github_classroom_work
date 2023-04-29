module Prog2 where

tripleNumber :: Integer -> Integer
tripleNumber a =  if a < 100 then a*3 else a

twoSame :: Integer -> Integer -> Integer -> Bool
twoSame q w e = (q == w) || (q == e) || (e == w)

triangleArea :: Integer -> Integer -> Float
triangleArea base height = fromIntegral base * 0.5 * fromIntegral height

product' :: Integer -> Integer
product' 0 = 1
product' n = n * product' (n-1)

or' :: Bool -> Bool -> Bool
or' q w = not ( (q==w) && not q )

integerSqrt :: Integer -> Integer
integerSqrt q = try q where
   try w  | w*w <= q  = w
          | otherwise = try (w - 1)

exponent' :: Integer -> Integer -> Integer
exponent' e  r = try e r where
   try q w  | w <= 0 = 1
            | w == 1 = q
            | otherwise = try (q*e) (w-1)

swap :: (Char, Char, Char, Char, Char) -> (Char, Char, Char, Char, Char)
swap (q, w, e, r, t) = (t, r, e, w, q)

negateTwoDigits :: [Integer] -> [Integer]
negateTwoDigits q = [ if w > 9 || w < (-9) then (-w)  else w | w <- q ]

matches :: Integer -> [Integer] -> [Integer ]
matches q w= [e | e <- w, e == q]

element :: Integer -> [Integer] -> Bool
element q w =  not (null (matches q w))
