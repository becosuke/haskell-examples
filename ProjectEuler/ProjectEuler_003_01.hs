main = print $ factors 600851475143
  where
    factors x = [y | y <- takeWhile (<= x) primes, mod x y == 0]

    primes = 2 : f [3, 5 ..]
      where
        f (x : xs) = x : f [y | y <- xs, mod y x /= 0]
