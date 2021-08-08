import System.Environment

main = do
  args <- getArgs
  print [n | n <- map fib [1 .. (read $ head args)]]
  where
    fib 0 = 0
    fib 1 = 1
    fib n = fib (n - 2) + fib (n - 1)
