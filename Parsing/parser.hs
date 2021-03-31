import Text.ParserCombinators.Parsec
import System.Environment

symbol :: Parser Char 
symbol = oneOf "!#$%&|*+-/:<=>?@^_~"

spacess :: Parser ()
spacess = skipMany1 space

readExpr :: String -> String 
readExpr input = case parse (spaces >> symbol) "lisp" input of
    Left err -> "No match: " ++ show err
    Right val -> "Found value"

main :: IO ()
main = do
          (expr:_) <- getArgs
          putStrLn (readExpr expr)