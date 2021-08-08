import System.Environment

main = do
  getArgs >>= print . fizzbuzz . read . head
  --args <- getArgs
  --print $ fizzbuzz $ read $ head args
    where
      fizzbuzz :: Int -> [String]
      fizzbuzz num | num < 0   = []
                   | otherwise = fizzbuzz_tmp num []
        where
          fizzbuzz_tmp :: Int -> [String] -> [String]
          fizzbuzz_tmp 0   nums = nums
          fizzbuzz_tmp num nums = fizzbuzz_tmp (num - 1) (fizzbuzz_tmp2 num:nums)
            where
              fizzbuzz_tmp2 :: Int -> String
              fizzbuzz_tmp2 num | mod num 15 == 0 = "fizzbuzz"
                                | mod num 5  == 0 = "buzz"
                                | mod num 3  == 0 = "fizz"
                                | otherwise       = show num
