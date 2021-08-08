main = do print $ sum $ getMultipleOfThreeOrFive $ getOddNumber [1..999]
  where
    getMultipleOfThreeOrFive :: [Int] -> [Int]
    getMultipleOfThreeOrFive [] = []
    getMultipleOfThreeOrFive nums = getMultipleOfThreeOrFive2 nums []
      where
        getMultipleOfThreeOrFive2 :: [Int] -> [Int] -> [Int]
        getMultipleOfThreeOrFive2 [] list = reverse list
        getMultipleOfThreeOrFive2 (num:nums) list =
          if mod num 3 == 0 || mod num 5 == 0
            then getMultipleOfThreeOrFive2 nums (num:list)
            else getMultipleOfThreeOrFive2 nums list
    getOddNumber :: [Int] -> [Int]
    getOddNumber [] = []
    getOddNumber nums = getOddNumber2 nums []
      where
        getOddNumber2 :: [Int] -> [Int] -> [Int]
        getOddNumber2 [] list = reverse list
        getOddNumber2 (num:nums) list =
          if mod num 2 /= 0
            then getOddNumber2 nums (num:list)
            else getOddNumber2 nums list
