module Zeller where

zeller :: Int -> Int -> Int -> Int
zeller y m d
  | m < 3 = zeller (y - 1) (m + 12) d
  | otherwise = rem (y + a - b + c + d + e) 7
  where
    [a, b, c] = map (div y) [4, 100, 400]
    e = div (13 * m + 8) 5
