import Data.List (union)
main = print $ sum $ union [3, 3 * 2 .. 999] [5, 5 * 2 .. 999]
