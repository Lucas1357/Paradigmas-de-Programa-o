-- 12. Recebe uma lista com nomes e retorna apenas aqueles que terminam com a letra 'a'

lastA :: [String] -> [String]
lastA [] = []
lastA (a:x) | last a ==  'a' = a : lastA x 
lastA (a:x) | last a /=  'a' = lastA x 


-- 11. Testes takeWhile

--takeWhile (/="terra") ["sol", "marte", "jupter", "terra", "vênus"]
--takeWhile (\x -> length x < 6) ["sol", "marte", "jupter", "terra", "vênus"]

 

--10 - Função que verifiqua se o caracter (primeiro argumento) está contido na string (segundo argumento).

charFound :: Char -> String -> Bool
charFound all "" = False
charFound all (a:x) | a == all = True
charFound all (a:x) | a /= all = charFound all x


--09 - Função que recebe uma lista de números inteiros e retorna uma lista com os pares.

returnEven :: [Int] -> [Int]
returnEven all = filter (even) all


--08

pos1970 ::  [Int] -> [Int]
pos1970 all = filter (\x -> (2016 - x) > 1970) all



--07

umEcem :: [Float] -> [Float]
umEcem all = filter (\x -> 1<= x && x <= 100) all



--06

negativos :: [Float] -> [Float]
negativos all = filter ( < 0 ) all


--05

calculaEx :: [Float] -> [Float]
calculaEx all = map (\n -> 3*n^2 + 2/n + 1) all


--04

numSpace :: String -> Int
numSpace "" = 0
numSpace (a:x) | a == ' ' = 1 + numSpace x
numSpace (a:x) | a /= ' ' =  0 + numSpace x


--03

addSr :: [String] -> [String]
addSr all = map(\x -> "Sr. " ++ x) all 



--02

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y = head y == head x 



--01

somaQuad :: Int -> Int -> Int
somaQuad x y = x^2 + y^2