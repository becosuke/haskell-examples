import Data.List
import Control.Arrow

main = print . concatMap (uncurry (:) . (head &&& show . length)) . group $ "aabcccccaaa"
