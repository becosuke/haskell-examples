main = putStrLn $ compress "aabcccccaaa"
  where
    compress :: String -> String
    compress [] = []
    compress str = compress_tmp str []
      where
        compress_tmp :: String -> [String] -> String
        compress_tmp [] arr = concat $ reverse arr
        compress_tmp (char:str) arr =
          let val = compress_tmp2 char str 1
            in compress_tmp (fst val) ((snd val):arr)
          where
            compress_tmp2 :: Char -> String -> Int -> (String, String)
            compress_tmp2 char arg@[] num = (arg, (char:(show num)))
            compress_tmp2 char arg@(char2:str) num =
              if char == char2
                then compress_tmp2 char str (num + 1)
                else (arg, (char:(show num)))
