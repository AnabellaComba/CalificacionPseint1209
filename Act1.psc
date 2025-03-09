Algoritmo Act1
	Definir i, j Como Entero
	Definir matriz Como Caracter
	Dimension matriz(3,3)
	Para i = 0 hasta 2 Hacer
		Para j = 0 Hasta 2 Hacer
			Escribir "Ingresa un valor para la fila ", i, " y la columna ", j
			Leer matriz(i,j)
			
		FinPara
	FinPara
	
	Muestra(matriz)
FinAlgoritmo

SubProceso Muestra(matriz)
	Definir i, j Como Entero
	Para i = 0 hasta 2 Hacer
		Para j = 0 Hasta 2 Hacer
			Escribir matriz(i,j), Sin Saltar ""
			
		FinPara
		Escribir ""
	FinPara
FinSubProceso

