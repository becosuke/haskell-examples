import System.Environment

main = getArgs >>= print . replaceSpace . head
  where
    replaceSpace :: String -> String
    replaceSpace str = concatMap replaceSpace_tmp str
      where
        replaceSpace_tmp :: Char -> String
        replaceSpace_tmp char
          | char == ' ' = "%20"
          | otherwise   = [char]
