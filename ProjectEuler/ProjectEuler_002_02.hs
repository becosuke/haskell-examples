main = print $ sum [n | n <- takeWhile (< 4000000) (map fib [1 ..]), even n]
  where
    fib = (map fib_tmp [0 ..] !!)
      where
        fib_tmp 0 = 0
        fib_tmp 1 = 1
        fib_tmp n = fib (n - 2) + fib (n - 1)
