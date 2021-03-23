module Main where
import System.Environment ( getArgs )
 
main :: IO ()
main = do
    putStrLn("Hello! What's your name?")
    name <- getLine 
    putStrLn("Ciao " ++ name ++ ", benvenuto in Italia")