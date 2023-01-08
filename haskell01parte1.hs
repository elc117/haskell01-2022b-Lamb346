
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

haskell01parte1 = do
  putStrLn "Hello"
  putStrLn "World"
  
  