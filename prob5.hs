module Problem5 where

-- why is this so naive :(

isMultiple :: Int -> Bool
isMultiple x = and (map (\n -> x `mod` n == 0) [1..20])

answer :: Int
answer = head [ x | x <- [1..], isMultiple x ]
