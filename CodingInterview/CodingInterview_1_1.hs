import System.Environment

main =
  do
    args <- getArgs
    if args == []
      then return ()
      else putStrLn $ if isUniq $ head args
        then "True"
        else "False"

isUniq :: String -> Bool

isUniq []                     = True
isUniq str | length str > 256 = False
           | otherwise        = isUniq_tmp str
  where
    isUniq_tmp :: String -> Bool
    isUniq_tmp []  = True
    isUniq_tmp str =
      if isUniq_tmp2 str == False
        then False
        else isUniq_tmp $ tail str

      where
        isUniq_tmp2 :: String -> Bool
        isUniq_tmp2 (_:[])     = True
        isUniq_tmp2 (char:str) =
          if char == head str
            then False
            else isUniq_tmp2 $ char:(tail str)
