module Lib where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

sayHello name = putStrLn ("Hello, " ++ name)


f x y = let z = x + y
            zz = z * x
        in let z = z
               y = x
           in