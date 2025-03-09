//construir un algoritmo que verifique si una matriz de datos enteros es mágica o no. En caso de serlo,
// el programa debe escribir la suma total. Además, el programa debe validar que los números introducidos estén
//en el rango de 1 a 9. El usuario define el tamaño de la matriz, que no debe exceder un orden de 10.
Algoritmo actComp3
	Definir n, m, matriz Como Entero
	EScribir "Ingrese un valor para la matriz"
	leer n
	Dimension matriz[n,n]
	llenadoMatriz(matriz,n)
	mostrarMatriz(matriz, n)
	controlMagia(matriz, n)
FinAlgoritmo
SubProceso llenadoMatriz(matriz, n)
	Definir i,j Como Entero
	Para i=0 Hasta n-1 Hacer
		Para j=0 Hasta n-1 Hacer
			
			Repetir
				Escribir"Ingrese valores para su matriz dentro del rango 1 a 9 en la posicion " i " , " j " : "
				leer matriz(i,j)
			Mientras Que matriz(i,j)<1 O matriz(i,j)>9
			
			
			
		Fin Para
		Escribir " "
		
	Fin Para
	
FinSubProceso

SubProceso mostrarMatriz(matriz, n)
	Definir i,j Como Entero
	Para i=0 Hasta n-1 Hacer
		Para j=0 Hasta n-1 Hacer
			Escribir matriz[i,j], Sin Saltar" "
		Fin Para
		Escribir " "
		
	Fin Para
	
FinSubProceso

SubProceso controlMagia(matriz, n)
	Definir i,j,sumaFila, sumaColumna,sumaDiagonal Como Entero
	Definir encontrado como logico
	Dimension sumaFila(n),sumaColumna(n),sumaDiagonal(n)
	
	
	Para i=0 Hasta n-1 Hacer
		Para j=0 Hasta n-1 Hacer
			sumaFila(i)= sumaFila(i)+matriz(i,j) //error posicion no inicializada!
			sumaColumna(j)= sumaColumna(j)+matriz(i,j)
		Fin Para
		Si i == j Y encontrado == falso Entonces
			Escribir "El número " " que ingreso el usuario se encuentra en las coordenadas " i ", " j " de la matriz"
			encontrado = Verdadero
		FinSi
		
		
	Fin Para
	
FinSubProceso