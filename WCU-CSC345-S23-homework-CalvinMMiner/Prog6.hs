module Prog6 where

safeLast :: [Int] -> Maybe Int
safeLast [] = Nothing
safeLast (x:xs) = Just  (head (reverse xs))

safeCount :: Int -> [Int] -> Maybe Int
safeCount _ [] = Nothing
safeCount target list = Just (length [ x | x <- list, target == x ])

{----------}

data Set345 = NonEmptySet [Int] | EmptySet
      deriving Show

singletonOrEmpty :: Set345 -> Bool
singletonOrEmpty s =  error "undefined"

member :: Int -> Set345 -> Bool
member _ = error "undefined"

size :: Set345 -> Int
size _ = error "undefined"

ins :: Int -> Set345 -> Set345
ins _ = error "undefined"

union' :: Set345 -> Set345 -> Set345
union' _ = error "undefined"

intersection' :: Set345 -> Set345 -> Set345
intersection' _ = error "undefined"

{----------}

countLetters :: IO [Int]
countLetters = do
    putStrLn "please enter your first word"  
    line <- getLine
    putStrLn "please enter your next word"  
    line2 <- getLine
    putStrLn "please enter your final word"  
    line3 <- getLine
    return [length line, length line2, length line3]

and' :: Bool -> IO Bool
and' bool = do
    putStrLn "please enter your Boolean "  
    line <- getLine
    return (bool && (line =="True") )
