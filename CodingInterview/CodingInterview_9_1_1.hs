import System.Environment

main =
  do
    args <- getArgs
    if args == []
      then return ()
      else putStrLn $ show $ countWays $ read $ head args

countWays :: Int -> Int

countWays 0 = 0
countWays 1 = 1
countWays 2 = 1 + countWays 1
countWays 3 = 1 + countWays 2 + countWays 1
countWays n = countWays (n - 3) + countWays (n - 2) + countWays (n - 1)
