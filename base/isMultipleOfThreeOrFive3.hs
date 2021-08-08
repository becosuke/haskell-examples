main = do print $ sum $ filter isMultipleOfThreeOrFive $ filter odd [1..999]
  where
    isMultipleOfThreeOrFive :: Int -> Bool
    isMultipleOfThreeOrFive num = if mod num 3 == 0 || mod num 5 == 0 then True else False
