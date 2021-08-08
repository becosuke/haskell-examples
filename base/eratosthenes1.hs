module Primes (primes) where

import System.Environment

main = do
  args <- getArgs
  print $ takeWhile (<=(read $ head args)) primes

primes = 2 : f [3, 5 ..]
  where
    f (x : xs) = x : f [y | y <- xs, mod y x /= 0]
