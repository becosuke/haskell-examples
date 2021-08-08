module Main where

import Data.Time
import Tuple3
import Zeller

main = getCurrentTime >>= return . getTemplate >>= putStrLn
  where
    getTemplate :: UTCTime -> String
    getTemplate = convertText . toGregorian . utctDay
      where
        convertText' day = show $ gregorianMonthLength (fst3 day) (snd3 day)
        convertText  day = show $ zeller (fromIntegral $ fst3 day) (snd3 day) 1
