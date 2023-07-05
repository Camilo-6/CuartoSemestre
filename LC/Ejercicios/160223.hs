-- Clase introductioria a Haskell


-- Problemario istas

-- Suma los elementos de una lista
sumaLista :: Num a => [a] -> a
sumaLista [] = 0
sumaLista (x:xs) = x + sumaLista xs

-- Funcion cabeza
cabeza :: [a] -> a
cabeza [] = error "La lista esta vacia"
cabeza (x:xs) = x

-- Funcion cola
cola :: [a] -> [a]
cola [] = error "La lista esta vacia"
cola (x:xs) = xs

-- Funcion sumaElementos
sumaElementos :: Num a => [a] -> a
sumaElementos [] = 0
sumaElementos (x:xs) = x + sumaElementos xs

-- Funcion tamanio
tamanio :: Num a => [b] -> a
tamanio [] = 0
tamanio (x:xs) = 1 + tamanio xs

-- Funcion maximo elemento
maximoElemento :: Ord a => [a] -> a
maximoElemento [] = error "La lista esta vacia"
maximoElemento [x] = x
maximoElemento (x:xs) = if x > maximoElemento xs then x else maximoElemento xs

-- Funcion minimo elemento
minimoElemento :: Ord a => [a] -> a
minimoElemento [] = error "La lista esta vacia"
minimoElemento [x] = x
minimoElemento (x:xs) = if x < minimoElemento xs then x else minimoElemento xs

-- Funcion que elimina repetidos
eliminaRepetidos :: Eq a => [a] -> [a]
eliminaRepetidos [] = []
eliminaRepetidos [x] = [x]
eliminaRepetidos (x:xs) = if elem x xs then eliminaRepetidos xs else x : eliminaRepetidos xs

-- Problemario

-- Funcion constante
constante :: Num a => a -> a
constante x = 2

-- Funcion identidad
identidad :: a -> a
identidad x = x

-- Funcion que calcula el cuadrado de un numero
cuadrado :: Num a => a -> a
cuadrado x = x * x

-- Aplicar una operacion a dos valores dependiendo quien es mayor o menor: diferencia positiva
diferenciaPositiva :: (Ord a, Num a) => a -> a -> a
diferenciaPositiva x y = if x > y then x - y else y - x

-- Funcion factorial (recursiva)
factorial1 :: (Eq a, Num a) => a -> a
factorial1 0 = 1
factorial1 n = n * factorial1 (n - 1)

-- Funcion factorial (listas de comprension)
factorial2 :: (Eq a, Enum a, Num a) => a -> a
factorial2 0 = 1
factorial2 n = product [1..n]

-- Funcion que determina si un numero es primo
esPrimo :: Integral a => a -> Bool
esPrimo n = if n > 1 then length [ x | x <- [1..n], mod n x == 0 ] == 2 else False

-- Funcion que nos da la reversa de una lista 
reversa :: [a] -> [a]
reversa [] = []
reversa [x] = [x]
reversa (x:xs) = reversa xs ++ [x]

-- Funcion que nos dice si una lista es palindroma
esPalindromo :: Eq a => [a] -> Bool
esPalindromo [] = True
esPalindromo [x] = True
esPalindromo (x:xs) = (x == last xs) && (esPalindromo (init xs))