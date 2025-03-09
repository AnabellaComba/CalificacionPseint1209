Algoritmo MatricesMagicas
	
	//definirunas variables
	Definir matriz, i, j, n como entero
	Definir resultadoF, resultadoC, resultadoD Como Logico
	n = 11
	resultadoF = Verdadero
	resultadoC = Verdadero
	resultadoD = Verdadero
	//validar si n es menor o iguala 10
	Mientras n > 10 o n <= 2 Hacer
		//pido al usuario un valor
		Escribir "Escribe un número menor a 10: "
		Leer n
	FinMientras
	
	//dimensionar la matriz
	Dimension matriz[n,n]
	
	//cargo los número manuales
	para i <- 0 Hasta n-1 Hacer
		para j <- 0 Hasta n-1 Hacer
			
			Escribir "Ingresa un número: "
			Leer matriz[i,j]
			
			Mientras matriz[i,j] > 10 o matriz[i,j] < 1 Hacer
				Escribir "Ingresa un número: "
				Leer matriz[i,j]
			FinMientras
			
		FinPara
	FinPara
	
	//sumar una fila, columna y diagonal
	para i <- 0 Hasta n-1 Hacer
		para j <- 0 Hasta n-1 Hacer
			//verificar si la diagonal
		FinPara
	FinPara
	
FinAlgoritmo

SubProceso sumarFila(m, f, c, resultadoF Por Referencia)
	definir i, suma como entero
	suma = 0
	para i <- 0 Hasta f-1 Hacer
		suma = suma + m[c, i]
	FinPara
FinSubProceso

SubProceso sumarColumna(m, f, c, suma, resultadoC Por Referencia)
	
	definir i, sumaColumna como entero
	
	sumaColumna = 0
	
	para i <- 0 Hasta c-1 Hacer
		para j <- 0 Hasta c-1 Hacer
			sumaColumna= sumaColumna + m[j, i]
		FinPara
		
		Si sumaColumna <> suma Entonces
			resultadoC = Falso
		FinSi
	FinPara
	
FinSubProceso

SubProceso sumarDiagonal(m, f, c, suma Por Referencia, resultadoD Por Referencia)
	definir i, j, sumad1, sumad2 como entero
	
	sumad1 = suma
	sumad2 = 0
	
	para i <- 0 Hasta c-1 Hacer
		sumad1 = sumad1 + m[i, i]
	FinPara
	
	para i <- c-1 Hasta 0 Hacer
		sumad2 = sumad2 + m[i, i]
	FinPara
	
	Si sumad1 <> sumad2 Entonces
		resultadoD = Falso
	FinSi
	
FinSubProceso

//matriz inversa -> suma de los 2 x tamño de 1 de los lados