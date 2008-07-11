module Main where

fib 0 = 0
fib 1 = 1
fib n = fib(n - 1) + fib(n - 2)

main = do putStrLn "What is fib(5) ?"
          x <- readLn
          if x == fib(x)
            then putStrLn "You're right!"
            else putStrLn "You're wrong!"