module Lib
  ( fetchLines
  , fetchDigits
  , combineDigits
  , firstNumbers
  , lastNumbers
  ) where

import Data.Char (isDigit)

fetchLines :: String -> IO [String]
fetchLines inputFile = lines <$> readFile inputFile

fetchDigits :: [String] -> [String]
fetchDigits = map $ filter isDigit

combineDigits :: [Char] -> [Char] -> [Integer]
combineDigits firsts lasts = zipWith combine firsts lasts
  where
    combine x y = read (x : [y])
    
firstNumbers :: [String] -> [Char]
firstNumbers = map head 

lastNumbers :: [String] -> [Char]
lastNumbers = map (head . reverse) 
