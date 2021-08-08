import System.Environment

main = do
  args <- getArgs
  print $ fizzbuzz $ read $ head args
    where
      fizzbuzz :: Int -> [String]
      fizzbuzz num = take num $ map fizzbuzz_tmp [1..]
        where
          fizzbuzz_tmp :: Int -> String
          fizzbuzz_tmp num | mod num 15 == 0 = "fizzbuzz"
                           | mod num 5  == 0 = "buzz"
                           | mod num 3  == 0 = "fizz"
                           | otherwise       = show num
