main = do
  print $ sum $ filter isMultipleOfThreeOrFive $ filter isOddNumber [1..999]
  where
    isMultipleOfThreeOrFive :: Int -> Bool
    isMultipleOfThreeOrFive num = if mod num 3 == 0 || mod num 5 == 0 then True else False

    isOddNumber :: Int -> Bool
    isOddNumber num = if mod num 2 /= 0 then True else False
