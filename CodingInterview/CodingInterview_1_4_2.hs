import System.Environment

main =
  do
    args <- getArgs
    if args == []
      then return ()
      else putStrLn $ replaceSpace $ head args

replaceSpace :: String -> String

replaceSpace []  = []
replaceSpace str = replaceSpace_tmp str
  where
    replaceSpace_tmp :: String -> String

    replaceSpace_tmp []  = []
    replaceSpace_tmp str = concat $ map replaceSpace_tmp2 str
      where
        replaceSpace_tmp2 :: Char -> String

        replaceSpace_tmp2 char | char == ' ' = "%20"
                               | otherwise   = [char]
