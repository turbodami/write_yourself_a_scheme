 module Main where
 import System.Environment ( getArgs )
 
 main :: IO ()
 main = do
    args <- getArgs
    putStrLn(show $ read (args !! 0) + read (args !! 1))