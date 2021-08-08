main = print $ sum $ filter isMultipleThreeOrFive [1 .. 999]
  where
   isMultipleThreeOrFive n = if mod n 3 == 0 || mod n 5 == 0 then True else False
