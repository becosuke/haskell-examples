import System.Environment

main =
  do
    args <- getArgs
    if args == []
      then return ()
      else (print . countWays . read . head) args
  where
    countWays :: Int -> Integer
    countWays = (map countWays_tmp [0..] !!)
      where
        countWays_tmp :: Int -> Integer
        countWays_tmp 0 = 0
        countWays_tmp 1 = 1
        countWays_tmp 2 = 2
        countWays_tmp 3 = 3
        countWays_tmp n = countWays (n - 3) + countWays (n - 2) + countWays (n - 1)
