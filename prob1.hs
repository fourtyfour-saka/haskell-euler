module Problem1 where

threeOrFive :: Int -> Int
threeOrFive n = sum [ x | x <- [1..n-1], x `mod` 3 == 0 || x `mod` 5 == 0 ]
