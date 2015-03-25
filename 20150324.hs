-- Exercicios de sala de aula 24/03
--Exercicio menorMaior
menorMaior :: Int -> Int -> Int -> (Int, Int)
menorMaior a b c
	| (a >= b) && (b >= c) = (c,a)
	| (a >= c) && (c >= b) = (b,a)
	| (b >= a) && (a >= c) = (c,b)
	| (b <= a) && (a <= c) = (b,c)
	| (a <= b) && (b <= b) = (a,c)
	| otherwise = (a,b)

--Exercicio ordenaTripla
ordenaTripla :: (Int, Int, Int) -> (Int, Int, Int)
ordenaTripla (a, b, c)
	| (a >= b) && (b >= c) = (c,b,a)
	| (a >= c) && (c >= b) = (b,c,a)
	| (b >= a) && (a >= c) = (c,a,b)
	| (b <= a) && (a <= c) = (b,a,c)
	| (a <= b) && (b <= b) = (a,b,c)
	| otherwise = (a,c,b)

	
--Exercicio Reta
type Ponto = (Float, Float)
type Reta = (Ponto, Ponto)

primeiraCoordenada :: Ponto -> Float
primeiraCoordenada (x,y) = x

segundaCoordenada :: Ponto -> Float
segundaCoordenada (x,y) = y

vertical :: Reta -> String
vertical ((x,y),(a,b))
	| x == a =  "Vertical"
	| otherwise = "False"

	
	