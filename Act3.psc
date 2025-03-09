Algoritmo buscoNum
	Definir matriz, num, i, j Como Entero
	Dimension matriz[5,5]
	
	cargarMatriz(matriz,5)
	
	Para i = 0 Hasta 4 Hacer
		para j = 0 Hasta 4 Hacer
			Escribir matriz[i,j], " | " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
	Escribir "Ingrese un númeron para buscar(entre 10 y 40): "
	Leer num
	buscoElemento(matriz,5, num)
	
FinAlgoritmo


SubProceso cargarMatriz(matriz Por Referencia, n)
	Definir i, j Como Entero
	
	Para i = 0 Hasta n-1 Hacer
		Para j = 0 Hasta n-1 Hacer
			matriz[i,j] = Aleatorio(10,40)
		FinPara
	FinPara
	
FinSubProceso



SubProceso buscoElemento(matriz, n, num)
	Definir i, j Como Entero
	Definir flag Como Logico
	i=0
	flag = Falso
	
	Mientras i<n y !flag Hacer
		j=0
		Mientras j<n y !flag Hacer
			Si matriz[i,j]==num Entonces
				flag = Verdadero
			FinSi
			j = j +1
		FinMientras
		i = i +1
	FinMientras
	
	Si flag==Verdadero Entonces
		Escribir "El número ingresado se encuentra en la fila ", i, " y en la columna ", j
	SiNo
		Escribir "El número ingresado no se encuentra en la matriz"
	FinSi
FinSubProceso