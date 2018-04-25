module Main where

import Data.List (intercalate, nub)

newtype Dialog       = Dialog { domainResult :: [DomainResult] }
newtype DomainResult = DomainResult { mainAction :: MainAction }
data MainAction   = Action1 | Action2 | Action3 deriving (Eq, Show, Ord)

join :: Show a => String -> [a] -> String
join delim list   = intercalate delim $ map show list

generateKeyList :: Dialog -> [String]
generateKeyList (Dialog dr) =
  let key = join ":" $ nub $ map mainAction dr
  in [key ++ ":DC", key]

main :: IO ()
main =
  print $ generateKeyList $ Dialog $ map DomainResult [Action1, Action1, Action2, Action3, Action1]