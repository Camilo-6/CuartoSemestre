
data ArbolBin a = Hoja a | Nodo a (ArbolBin a) (ArbolBin a) | NodoConHI a (ArbolBin a) | NodoConHD a (ArbolBin a)

instance Show a => Show (ArbolBin a) where
    show (Hoja x) = "Hoja " ++ show x
    show (Nodo x izq der) = "Nodo " ++ show x ++ " (" ++ show izq ++ ") (" ++ show der ++ ")"
    show (NodoConHI x izq) = "NodoConHI " ++ show x ++ " (" ++ show izq ++ ")"
    show (NodoConHD x der) = "NodoConHD " ++ show x ++ " (" ++ show der ++ ")"

convertir :: [a] -> ArbolBin a
convertir [] = error "No se puede convertir una lista vacia"
convertir [x] = Hoja x
convertir (x:xs) = convertirAux (x:xs) 0 (length (x:xs))

convertirAux :: [a] -> Int -> Int -> ArbolBin a
convertirAux [] _ _ = error "No se puede convertir una lista vacia"
convertirAux (x:xs) i n = if not a && not b then Hoja c
                        else if a && not b then NodoConHI c (convertirAux (x:xs) (2*i+1) n)
                        else Nodo c (convertirAux (x:xs) (2*i+1) n) (convertirAux (x:xs) (2*i+2) n)
                        where
                            a = 2*i+1 < n
                            b = 2*i+2 < n
                            c = (x:xs) !! i
