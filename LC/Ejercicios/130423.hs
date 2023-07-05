convertirMayuscula :: Char -> Char
convertirMayuscula a = if (97 <=  c && c <= 122) then toEnum (c-32) else if (65 <= c && c <= 90) then toEnum c else error "No es una letra"
                       where c = fromEnum a


esUnDigito :: Char -> Bool
esUnDigito a = if (elem c [48..57]) then True else error "No es un digito"
               where c = fromEnum a


sumaVectorial :: (Num a) => (a,a,a) -> (a,a,a) -> (a,a,a)
sumaVectorial (x,y,z) (a,b,c) = (x+a,y+b,z+c)


valAbs :: (Num a, Ord a) => a -> a
valAbs a | (a < 0) = -a
         | (a >= 0) = a