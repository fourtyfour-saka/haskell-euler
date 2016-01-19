module Problem6 where

squareSum :: Int
squareSum = sum $ map (\x -> x * x) [1..100]

sumSquare :: Int
sumSquare = (\x -> x * x) $ sum [1..100]

answer = sumSquare - squareSum
