module Problem3 where

topFactor :: Int -> Int
topFactor n = ceiling $ sqrt $ fromIntegral n 

primeSieve :: [Int]
primeSieve = sieve [2..]
    where sieve (p : xs) = p : sieve [ x | x <- xs, x `mod` p > 0]
  
primeFactors :: Int -> [Int]
primeFactors n = [ x | x <- takeWhile (< topFactor n) primeSieve, n `mod` x == 0 ]

