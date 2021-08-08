module Fibonacci (fib) where

import System.Environment

main = do
  args <- getArgs
  print $ take (read $ head args) fib

fib :: [Integer]
fib = 1 : 1 : zipWith (+) fib (tail fib)
