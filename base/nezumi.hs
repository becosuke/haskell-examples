import System.Environment

{-
2匹のネズミが1ヶ月で12匹生む。
雌雄同数が生まれるものとする。
次の月に14匹が7*12匹生む。
また、ねずみの寿命は3ヶ月とする。
nヶ月後に何匹か。
-}

--main = getArgs >>= print . sum . nezumi
main = getArgs >>= return . nezumi >>= print
  where
    nezumi arg = take 3 $ reverse . take (read $ head arg) (map truncate $ map (2 *) $ map (7 **) [0,1..])
    nezumi' = take 3 . nezumi_tmp2
      where
        nezumi_tmp2 = reverse . nezumi_tmp . toridasi
        nezumi_tmp = take' $ map truncate $ map (2 *) $ map (7 **) [0,1..]
        nezumi_tmp' = take' calc
        toridasi = read . head
        calc = maps [0,1..]
          where
            maps = map_truncate . map_twice . map_seven
              where
                map_truncate = map truncate
                map_twice = map (2 *)
                map_seven = map (7 **)

take' a b = take b a
