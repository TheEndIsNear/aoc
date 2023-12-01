module Main (main) where

import Lib

main :: IO ()
main = do
   inputLines <- fetchLines "src/input.txt"
   let digits = fetchDigits inputLines
   let firsts = firstNumbers digits
   let lasts = lastNumbers digits
   let combinedValues = combineDigits firsts lasts
   let sumValues = sum combinedValues
   print sumValues
