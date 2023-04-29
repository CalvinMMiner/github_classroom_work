
Code the following Haskell functions in a file named `Prog7.hs`. I've given you the starter code already. Complete these functions by replacing the line `error "undefined"` in them. _In your solution, you may define helper functions that are called by the original function._

If you cannot figure out one of the problems, do not remove the function, but leave it in as `error`.

1. Write a function `unique` that returns the list of elements that occur exactly once in the argument list. You must use recursion and not list comprehension. A helper function, or functions, may be useful.  
   `unique :: Eq a => [a] -> [a]`
1. Write a function `piglatinize` that returns a word into its piglatin form: if it begins with a vowel, add to the end "yay", else move non-vowels to the end of the string until a vowel is at the front and then add to the end "ay". The word arguments are guaranteed to have a vowel (a, e, i, o, or u) and not begin with the letter y.  
   `piglatinize :: String -> String`

<hr>

Consider the following type:

   ```haskell
   data Expr1 = Val1 Int
              | Add1 Expr1 Expr1
              | Sub1 Expr1 Expr1
              | Mul1 Expr1 Expr1
              | Div1 Expr1 Expr1
   ```

1. Write a function `value1` that evaluates an expression.  
   `value1 :: Expr1 -> Int`
1. Write a function `value2` that evaluates an expression, but returns `Nothing` if there is a division by zero scenario.  
   `value2 :: Expr1 -> Maybe Int`
1. _Make the `Expr1` type an instance of the `Show` class._ Appropriately define the function `show` so that `(Add2 (Val2 3) (Val2 4))` returns the string "(3+4)" and `(Add2 (Val2 3) (Mul2 (Val2 2)(Val2 4)))` returns the string "(3+(2*4))".  

<hr>

Now we will extend the `Expr` example above to contain conditional expressions. 

   ```haskell
   data Expr2 = Val2 Int
              | Add2 Expr2 Expr2
              | Sub2 Expr2 Expr2
              | Mul2 Expr2 Expr2
              | Div2 Expr2 Expr2
              | If BExpr2 Expr2 Expr2
   ```

   The If data constructor `(If BExpr2 Expr2 Expr2)` will evaluate the boolean expression (first argument) and will return the value of the second argument if it is true, else it will return the third argument. Define the `BExpr2` type as the following:

   ```haskell
   data BExpr2 = BoolLit Bool
               | And BExpr2 BExpr2
               | EqualTo Expr2 Expr2
               | GreaterThan Expr2 Expr2
   ```

1. Write a function `bEval :: BExpr2 -> Bool` that evaluates instances of the above boolean expression.  
   `bEval :: BExpr2 -> Bool`
1. Write a function `value2` that evaluates an expression.  
   `value3 :: Expr2 -> Maybe Int`
