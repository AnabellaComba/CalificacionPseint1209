Algoritmo actividad2
	definir i,j, N, M Como Entero
	Definir matriz Como Entero
	Escribir "Ingrese las filas y las columnas de la matriz: "
	leer N, M
	Dimension matriz[N, M]
	LlenarMatriz(matriz, N, M)
	SumaMatriz(matriz, N, M)
FinAlgoritmo

SubProceso LlenarMatriz(matriz, N, M)
	definir i,j Como Entero
	para i = 0 Hasta N - 1 Hacer
		para j = 0 hasta M - 1 Hacer
			matriz[i, j] = Aleatorio(0,10)
			Escribir matriz[i, j] "|" sin saltar
		FinPara
		Escribir " "
	FinPara
FinSubProceso

SubProceso SumaMatriz(matriz, N, M)
	definir i, j, sumTotal Como Entero
	sumTotal = 0
	para i = 0 Hasta N - 1 Hacer
		para j = 0 hasta M - 1 Hacer
			sumTotal = matriz[i, j] + sumTotal
		FinPara
	FinPara
	Escribir "La suma total de la matriz es: ", sumTotal
FinSubProceso