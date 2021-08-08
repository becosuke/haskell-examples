import System.Environment

main = getArgs >>= print . collatz
  where
    collatz = collatz_tmp . read . head
      where
        collatz_tmp num = collatz_tmp2 num [num]
        collatz_tmp2 :: Int -> [Int] -> [Int]
        collatz_tmp2 0 nums = reverse nums
        collatz_tmp2 1 nums = reverse nums
        collatz_tmp2 arg nums
          | mod arg 2 == 0 = let num = div arg 2 in collatz_tmp2 num (num:nums)
          | otherwise      = let num = arg * 3 + 1 in collatz_tmp2 num (num:nums)
