module Main (main) where

import Lib

main :: IO ()
main = do
   let fileName = "src/input.txt"
   inputList <-  fetchLines fileName
   let values = splitData inputList
   let filteredValues = filterBlankValue values
   let integerValues = convertToIntegers filteredValues
   let valueSums = sumValues integerValues
   let maxSum = maximumSum valueSums
   print maxSum
   return ()
