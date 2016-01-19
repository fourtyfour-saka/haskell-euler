module Problem2 where

fibs :: [Int]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

fibsEven :: Int -> Int
fibsEven n = sum $ filter (\x -> x `mod` 2 == 0) $ take n fibs 
