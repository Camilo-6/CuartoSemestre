-- Nunca he usado haskell, hice lo que pude

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
  print (factorial 6)