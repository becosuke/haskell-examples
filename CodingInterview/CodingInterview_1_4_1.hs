import System.Environment

main =
  do
    args <- getArgs
    if args == []
      then return ()
      else putStrLn $ replaceSpace $ head args

replaceSpace :: String -> String

replaceSpace []  = []
replaceSpace str = replaceSpace_tmp str []
  where
    replaceSpace_tmp :: String -> String -> String

    replaceSpace_tmp []  str = str
    replaceSpace_tmp arg str = replaceSpace_tmp (init arg) (replaceSpace_tmp2 (last arg) ++ str)
      where
        replaceSpace_tmp2 :: Char -> String

        replaceSpace_tmp2 char | char == ' ' = "%20"
                               | otherwise   = [char]
