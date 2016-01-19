module Problem10 where

-- primes :: [Int]
-- primes = sieve [2..]
--     where
--         sieve (p : xs) = p : sieve [ x | x <- xs, x `mod` p > 0 ]
-- 
-- answer :: Int
-- answer = sum $ takeWhile (< 2000000) primes

primesTo :: [Int] -> [Int]
primesTo []       = []
primesTo (p : xs) = p : primesTo [ x | x <- xs, x `mod` p > 0] 

answer :: Int
answer = sum $ primesTo [2..1999999] 
