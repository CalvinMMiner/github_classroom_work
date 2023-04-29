Code the following Haskell functions in a file named `Prog1.hs`. I've given you the starter code already. Complete these functions by replacing the line `error "undefined"` in them. _In your solution, you may define helper functions that are called by the original function._

If you cannot figure out one of the problems, do not remove the function, but leave it in as `error`.

1. Write a function `isThreeDigitPositive` that returns whether an integer is a three digit positive number.
   `isThreeDigitPositive :: Int -> Bool`
   
1. Write a function `dividesEvenly` that returns whether the second integer divides evenly into the first integer.  
  `dividesEvenly 10 3` should return `False`.  
  `dividesEvenly :: Integer -> Integer -> Bool`
  
1. Write a function `middle` that returns the 2nd greatest of three given int arguments.  
   `middle 3 5 3` should return `3`.  
   `middle :: Int -> Int -> Int -> Int`
   
1. Write a function `nor` that computes the NOR gate of two boolean arguments. (Look up "nor" if you do not know what it is.)  
   `nor :: Bool -> Bool -> Bool`
   
1. Write a function `f2c` that converts a temperature in Fahrenheit into Celcius using the equation:   
   _c = (f-32)*(5/9)_  
   `f2c :: Float -> Float`
   
1. Write a function `floorDecimal` that calculates the floor of a float, but returns it as a float rather than an integer.  
   `floorDecimal 15.1` should return `15.0`.  
   `floorDecimal :: Float -> Float`
   
1. Write a function `letterGrade` that returns the equivalent letter grade for a given numerical integer grade, per the syllabus for this course.  
   `letterGrade :: Integer -> String`
   
1. Write a function `averageThree` to return the average of three integers.  
   `averageThree :: Integer -> Integer -> Integer -> Float`
   
1. Write a function `howManyAboveAverage` that returns how many of three integer inputs are above its average value. (Hint: utilize the `averageThree` function.)  
    `howManyAboveAverage 3 4 11` should return `2`.
    `howManyAboveAverage :: Integer -> Integer -> Integer -> Integer`
    
