module Main where

fac :: Integer -> Integer
fac 0 = 1
fac n | n > 0 = n * fac(n-1)

-- *Main> fac(5)
-- 120
