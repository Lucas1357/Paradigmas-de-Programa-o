-- 14
geraTabela :: [Int] -> [(Int, Int)]
geraTabela [] = []
geraTabela (a:x) = (a, a^2) : geraTabela (x)


-- 13
mult2 :: [Int] -> [Int] -> [Int]
mult2 x y = zipWith (*) x y


-- 12
prodVet :: [Int] -> [Int] -> [Int]
prodVet x [] = []
prodVet [] y = []
prodVet (a:w) (b:z) = a*b : prodVet w z


-- 11
coordenadas :: [(Float, Float)] -> [(Float, Float)]
coordenadas [] = []
coordenadas (a:x) = ((fst a)+2, (snd a)+2) : coordenadas x


-- 10
charFound :: Char -> String -> Bool
charFound c "" = False
charFound c (a:x) | c == a = True
                  | c /= a = charFound c x


-- 09
codificaRec :: String -> String
codificaRec "" = ""
codificaRec (a:x) | a == ' ' = ' ' : codificaRec x
                  | a /= ' ' = '-' : codificaRec x


-- Função auxiliar para a questão 8
aux08 :: Char -> Char
aux08 ' ' = ' '
aux08 x = '-'

-- 08
codifica :: String -> String
codifica x = map(\y -> aux08 y) x 


-- 07
semvogais :: String -> String
semvogais [] = []
semvogais (a:x) | (elem a "aeiouAEIOU") = semvogais x
                | otherwise = a : semvogais x 

-- 06
semVogais :: String -> String
semVogais s = filter(\x -> (elem x "aeiouAEIOU") == False) s


-- 05
negativos :: [Float] -> [Float]
negativos [] = []
negativos (a:x) | a < 0 = a : negativos x
                | otherwise = negativos x


-- 04
calcula :: [Float] -> [Float]
calcula [] = []
calcula (a:x) = (3*a^2 + 2/a + 1) : calcula x


-- 03
space :: String -> Int
space [] = 0
space (a:x) | a == ' ' = 1 + space x
            | otherwise = space x


-- 02
addSr :: [String] -> [String]
addSr [] = []
addSr (a:x) = ("Sr. " ++ a) : addSr x  


-- 01
quadrado :: [Float] -> [Float]
quadrado [] = []
quadrado (a:x) = (a^2) : quadrado x

