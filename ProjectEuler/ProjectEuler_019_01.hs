-- Zeller の公式（の変形 ?）
-- 0 : Sun, 1 : Mon, 2 : Tue ..
zeller :: Int -> Int -> Int -> Int
zeller y m d
    | m < 3 = zeller (y - 1) (m + 12) d
    | otherwise = rem (y + a - b + c + d + e) 7
    where
      [a, b, c] = map (div y) [4, 100, 400]
      e = div (13 * m + 8) 5
 
problem019 :: Int
problem019 = length [(y, m) | y <- [1901 .. 2000],
                     m <- [1 .. 12], zeller y m 1 == 0]
 
main = print problem019
