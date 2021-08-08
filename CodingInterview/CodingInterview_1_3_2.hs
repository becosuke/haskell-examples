import System.Environment
import Data.Char

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
isAnagram str1 str2 = if sumStr str1 == sumStr str2 then True else False
  where
    sumStr :: String -> Int

    sumStr str = sumStr_tmp str 0
      where
        sumStr_tmp :: String -> Int -> Int

        sumStr_tmp [] int = int
        sumStr_tmp (char:str) int = sumStr_tmp str (ord char + int)
