module Prog7 where
import Data.Char (intToDigit)
import GHC.Integer (integerToWord)

unique :: Eq a => [a] -> [a]
unique [] = []
unique (x:xs) = if check x xs then x : unique xs else unique (filter (/= x) xs )
   where
      check :: Eq a => a -> [a] -> Bool
      check _ [] = True
      check y (x:xs) = (y /= x) && check y xs


voules = ['a', 'e', 'i', 'o', 'u']
piglatinize :: String -> String
piglatinize (x:xs) = if vowel x voules then (x:xs) ++ "yay" else piglatinize2 (xs ++ [x])
   where piglatinize2 (x:xs) = if vowel x voules then (x:xs) ++ "ay" else piglatinize2 (xs ++ [x])

vowel :: Char -> [Char] -> Bool
vowel test (x:xs)
  | test == x = True
  | null xs = False
  | otherwise = vowel test xs

data Expr1 = Val1 Int
            | Add1 Expr1 Expr1
            | Sub1 Expr1 Expr1
            | Mul1 Expr1 Expr1
            | Div1 Expr1 Expr1

value1 :: Expr1 -> Int
value1 (Val1 x) = x
value1 (Add1 x y) = value1 x + value1 y
value1 (Sub1 x y) = value1 x - value1 y
value1 (Mul1 x y) = value1 x * value1 y
value1 (Div1 x y) = div (value1 x) (value1 y)


value2 :: Expr1 -> Maybe Int
value2 (Val1 x) = Just x
value2 (Add1 x y) = Just (value1 x + value1 y)
value2 (Sub1 x y) = Just (value1 x - value1 y)
value2 (Mul1 x y) = Just (value1 x * value1 y)
value2 (Div1 x y) = if value2 y == Just 0 then Nothing else Just (div (value1 x) (value1 y))


instance Show Expr1 where
   show (Val1 x)   = show (value1 (Val1 x)    )
   show (Add1 x y) = "(" ++ show x ++ "+" ++ show y ++ ")"
   show (Sub1 x y) = "(" ++ show x ++ "-" ++ show y ++ ")"
   show (Mul1 x y) = "(" ++ show x ++ "*" ++ show y ++ ")"
   show (Div1 x y) = "(" ++ show x ++ "/" ++ show y ++ ")"

data Expr2 = Val2 Int
            | Add2 Expr2 Expr2
            | Sub2 Expr2 Expr2
            | Mul2 Expr2 Expr2
            | Div2 Expr2 Expr2
            | If BExpr2 Expr2 Expr2

data BExpr2 = BoolLit Bool
            | And BExpr2 BExpr2
            | EqualTo Expr2 Expr2
            | GreaterThan Expr2 Expr2

bEval :: BExpr2 -> Bool
bEval (BoolLit x) = x
bEval (And x y) = bEval x &&  bEval y
bEval (EqualTo x y) = value3 x ==  value3 y
bEval (GreaterThan x y) = value3 x > value3 y

value3 :: Expr2 -> Maybe Int
value3 (Val2 x) = Just x
value3 (Add2 x y) = Just (value4 x + value4 y)
value3 (Sub2 x y) = Just (value4 x - value4 y)
value3 (Mul2 x y) = Just (value4 x * value4 y)
value3 (Div2 x y) = if value3 y == Just 0 then Nothing else Just (div (value4 x) (value4 y))
value3 (If a x y) = if bEval a then Just (value4 x) else Just (value4 y)

value4 :: Expr2 -> Int
value4 (Val2 x) = x
