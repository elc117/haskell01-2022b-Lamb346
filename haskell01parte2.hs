--Parte 1

-- recebe dois números x e y e calcula a soma dos seus quadrados
sumSquares :: Int -> Int -> Int
sumSquares x y = x^2 +y^2

-- recebe um raio r e calcula a área de um círculo 
circleArea :: Float -> Float
circleArea r = pi*r^2

--recebe o ano de nascimento de uma pessoa e o ano atual, produzindo como resultado a idade (aproximada) da pessoa
age :: Int -> Int -> Int
age n a = a - n

-- recebe uma idade e resulta verdadeiro caso a idade seja maior que 65 anos
isElderly :: Int -> Bool
isElderly i = i > 65

--recebe uma String e adiciona tags <li> e </li> como prefixo e sufixo, respectivamente
htmlItem :: String -> String
htmlItem s = "<li>" ++ s ++ "</li>"

--recebe uma string e verifica se ela inicia com o caracter 'A'
startsWithA :: String -> Bool
startsWithA s = head s == 'A'

-- recebe uma string e verifica se ela termina com o caracter 'r'
isVerb :: String -> Bool
isVerb f = last f == 'r'

-- recebe um caracter e verifica se ele é uma vogal minúscula
isVowel :: Char -> Bool
isVowel f =  f == 'a' || f == 'e' || f == 'i' || f == 'o' || f == 'u'

--recebe 2 listas e verifica se possuem o mesmo primeiro elemento
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads list1 list2 = head list1 == head list2

--recebe um caracter e verifica se é uma vogal, tanto maiúscula como minúscula
isVowel2 :: Char -> Bool
isVowel2 f =  f `elem` "aeiouAEIOU"

--Parte 2

--recebe uma lista de nomes e aplique a função htmlItem em cada nome
itemize :: [String] -> [String]
itemize nomes = map htmlItem nomes

--recebe uma string e retorna outra contendo somente suas vogais
onlyVowels :: String -> String
onlyVowels m = filter isVowel2 m

-- recebe uma lista de idades, seleciona somente as que forem maiores que 65 anos
onlyElderly :: [Int] -> [Int]
onlyElderly x = filter isElderly x

-- Verifica se uma palavra tem mais de 10 caracteres
isLongWord :: String -> Bool
isLongWord s = length s > 10

-- recebe uma lista de strings e retorna somente as strings longas
onlyLongWords :: [String] -> [String]
onlyLongWords s = filter isLongWord s

-- recebe um número inteiros e verifica se é par
isEven :: Int -> Bool
isEven n = mod n 2 == 0

-- recebe uma lista de números inteiros e retorna somente aqueles que forem pares
onlyEven :: [Int] -> [Int]
onlyEven x = filter isEven x

-- recebe um número e verifica se está entre 60 e 80
between60and80 :: Int -> Bool
between60and80 x = x < 80 && x > 60

-- recebe uma lista de números e retorna somente os que estiverem entre 60 e 80
onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 x = filter between60and80 x

-- recebe um caracter e verifica se ele é um expaço
spaces :: Char -> Bool
spaces x = x == ' '

-- recebe uma String e retorna somente os espaços
convt :: String -> String
convt s = filter spaces s 

-- recebe uma String e retorna o número de espaços
countSpaces :: String -> Int
countSpaces x = length (convt x)

-- recebe uma lista de valores de raios de círculos, retorna uma lista com a área correspondente a cada raio
calcAreas :: [Float] -> [Float]
calcAreas x = map circleArea x

main = do
  putStrLn "Hello"
  putStrLn "World"