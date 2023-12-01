module Lib
    ( fetchLines
    , returnValues
    , sumValues
    , maximumSum
    , topNValuesTotal
    ) where

import Data.List.Split (splitOn)
import Data.List (sort)

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

returnValues :: String -> [[Integer]]
returnValues = convertToIntegers . filterBlankValue . splitData 

maximumSum :: [Integer] -> Integer
maximumSum = maximum

topNValuesTotal :: Int -> [Integer] -> Integer
topNValuesTotal n = sum . (take n) . reverse . sort 
