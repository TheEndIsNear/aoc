module Lib
    ( fetchLines
    , splitData
    , filterBlankValue
    , convertToIntegers
    , sumValues
    , maximumSum
    ) where

import Data.List.Split (splitOn)

fetchLines :: String -> IO String
fetchLines inputFile = do
    readFile inputFile

splitData :: String -> [[String]]
splitData = map (splitOn "\n") . splitOn "\n\n"

filterBlankValue :: [[String]] -> [[String]]
filterBlankValue = map (filter (/= ""))

convertToIntegers :: [[String]] -> [[Integer]]
convertToIntegers = map (map read)

sumValues :: [[Integer]] -> [Integer]
sumValues = map (foldr (+) 0) 

maximumSum :: [Integer] -> Integer
maximumSum = maximum
