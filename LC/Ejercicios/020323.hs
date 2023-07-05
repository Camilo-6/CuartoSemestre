-- Ejercicios de hoy

-- Depura Lista
depuraLista :: (a -> Bool) -> [a] -> [a]
depuraLista _ [] = []
depuraLista f (x:xs) = [x | x <- (x:xs), f x == True]

depuraLista2 :: (a -> Bool) -> [a] -> [a]
depuraLista2 _ [] = []
depuraLista2 f (x:xs) = if f x then x : depuraLista2 f xs else depuraLista2 f xs

-- Es Par
esPar :: Integral a => a -> Bool
esPar n = mod n 2 == 0


-- Tipos explicitos

-- Ejemplo de definicion de tipo y funciones sobre el mismo

data Dia = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo

esLaboral :: Dia -> Bool
esLaboral Sabado = False
esLaboral Domingo = False
esLaboral _ = True
