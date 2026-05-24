
module Main(main) where
import Lib(mystery)

main :: IO ()
main = do
    print $ mystery 5 "Hello"
    print $ mystery (-3) "World"

    
