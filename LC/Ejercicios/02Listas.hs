-- Nunca he usado haskell, hice lo que pude

evenList :: Integer -> Integer -> [Integer]
evenList n m = [x | x <- [n .. m], even x]

extList :: Integer -> Integer -> [Integer]
extList n m = [n .. m]

main :: IO ()
main = do
  print (evenList 10 20)
  print (evenList 25 43)
  print (evenList 23 10)
  print (extList 10 20)
  print (extList 25 43)
  print (extList 23 10)
  print [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]