Algoritmo Act2
	Definir i, j, N, M Como Entero
	Definir matriz Como entero
	Dimension matriz(N,M)
	Para i = 0 hasta N-1 Hacer
		Para j = 0 Hasta M-1 Hacer
		matriz(i,j) = Aleatorio(0,10)
		FinPara
	FinPara
	
	CalcularSuma(matriz, N, M)
	LlenarMatriz(matriz, N, M)
//Muestra(matriz)
FinAlgoritmo

SubProceso CalcularSuma(matriz, N, M)
	Definir i, j, suma Como Entero
	suma = 0
	Para i = 0 hasta N - 1 Hacer
		Para j = 0 Hasta M -1 Hacer
			
			suma = suma + matriz(i,j)
			
		FinPara
	FinPara
	
	Escribir " La suma de los valores almacenados es: ", suma
	Escribir ""
	
FinSubProceso

SubProceso LlenarMatriz(matriz, N, M)
	
FinSubProceso

////SubProceso Muestra(matriz)
//	Definir i, j Como Entero
//	Para i = 0 hasta 2 Hacer
//		Para j = 0 Hasta 2 Hacer
//			Escribir matriz(i,j), Sin Saltar ""
//			
//		FinPara
//		Escribir ""
//	FinPara
//FinSubProceso

