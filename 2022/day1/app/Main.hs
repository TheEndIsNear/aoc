module Main (main) where

import Lib

main :: IO ()
main = do
   let fileName = "src/input.txt"
   inputList <-  fetchLines fileName
   let values = returnValues inputList
   let valueSums = sumValues values
   let maxSum = maximumSum valueSums
   print maxSum

   let top3ValuesTotal = topNValuesTotal 3 valueSums
   print top3ValuesTotal
   return ()
