Algoritmo activcomplementaria
	Definir i,j como entero
	i=0
	j=0
	LlenarMatriz(i,j)
	ImprimirMatriz(i,j)
	
FinAlgoritmo

SubProceso LlenarMatriz(i,j)
Definir matriz como entero
	Dimension matriz(2,2)
	
	Para i=0 Hasta 1 Con Paso 1 Hacer
		Para j=0 Hasta 1 Con Paso 1 Hacer
			si i=j Entonces
				matriz(i,j)=0
			SiNo
				matriz(i,j) = Azar(5)
			FinSi
		FinPara
	Fin Para
FinSubProceso

SubProceso ImprimirMatriz(i,j)
	Definir matriz como entero
	Dimension matriz(2,2)
	Para i=0 Hasta 1 Con Paso 1 Hacer
		Para j=0 Hasta 1 Con Paso 1 Hacer
			Escribir matriz(i, j), " ", Sin Saltar " "
		FinPara
		Escribir ""
	Fin Para
	
FinSubProceso