module Lib
    ( someFunc
    , mystery
    ) where

-- CHALLENGE: What is the type of 'mystery'?
-- Delete the '_' and Emacs/HLS will tell you the full type!
-- mystery :: int -> string -> string
-- actually :: a -> [Char] -> [Char]  where a is Ord , Num typeclasses Float Int Integer 
mystery :: Int -> [Char] -> [Char]
mystery x y = if x > 0 then (y ++ " is positive") else (y ++ " is non-positive")

someFunc :: IO ()
someFunc = putStrLn "someFunc"
