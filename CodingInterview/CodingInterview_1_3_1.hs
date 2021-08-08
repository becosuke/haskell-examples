import System.Environment
import Data.List

main =
  do
    args <- getArgs
    if length args < 2
      then putStrLn $ show $ length args
      else putStrLn $ if isAnagram (head args) (head $ tail args)
        then "True"
        else "False"

isAnagram :: String -> String -> Bool

isAnagram [] []     = True
isAnagram str1 str2 = if sort str1 == sort str2 then True else False
