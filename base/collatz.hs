import System.Environment

main = do
  args <- getArgs
  print $ collatz $ read $ head args
    where
      collatz :: Int -> [Int]
      collatz num = collatz_tmp num [num]
        where
          collatz_tmp :: Int -> [Int] -> [Int]
          collatz_tmp 0 nums = reverse nums
          collatz_tmp 1 nums = reverse nums
          collatz_tmp arg nums =
            if mod arg 2 == 0
              then let num = div arg 2
                in collatz_tmp num (num:nums)
              else let num = arg * 3 + 1
                in collatz_tmp num (num:nums)
