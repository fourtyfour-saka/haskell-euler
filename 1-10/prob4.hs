module Problem4 where

isPalindrome :: Int -> Bool
isPalindrome x = (read . reverse . show) x == x 

largest :: Int
largest = maximum [ x * y | x <- [100..999], y <- [100..999], isPalindrome (x * y) ]
