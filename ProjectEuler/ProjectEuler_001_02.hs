main = print $ sum $ filter isMultipleThreeOrFive [1 .. 999]
  where
    isMultipleThreeOrFive n
      | mod n 3 == 0 = True
      | mod n 5 == 0 = True
      | otherwise    = False
