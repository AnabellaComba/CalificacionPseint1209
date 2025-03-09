SubProceso SumarElementos (f,c,m,sumador por referencia)
	Definir i,j Como Entero
	sumador = 0
	Para i<-0 Hasta f-1 Con Paso 1 Hacer
		Para j<-0 Hasta c-1 Con Paso 1 Hacer
			sumador = sumador + m[i,j]
		Fin Para
	Fin Para
FinSubProceso

SubProceso Llenar(f,c,m)
	Definir i,j Como Entero
	Para i<-0 Hasta f-1 Con Paso 1 Hacer
		Para j<-0 Hasta c-1 Con Paso 1 Hacer
			m[i,j]=Aleatorio(1,99)
		Fin Para
	Fin Para
FinSubProceso

SubProceso MostrarMatriz (f,c,m)
	Definir i,j Como Entero
	Para i<-0 Hasta f-1 Con Paso 1 Hacer
		Para j<-0 Hasta c-1 Con Paso 1 Hacer
			si (j<>c-1) Entonces
				
				si m[i,j]<10 Entonces
					Escribir " ",m[i,j]," , " Sin Saltar
				sino
					Escribir m[i,j]," , " Sin Saltar
				FinSi
				
				
			SiNo
				si m[i,j]<10 Entonces
					Escribir " ",m[i,j]
				sino
					Escribir m[i,j]
				FinSi
			FinSi
			
		Fin Para
	Fin Para
FinSubProceso

Algoritmo LlenarYSumar
	Definir f,c,m, opt, sumador Como Entero
	sumador = 0
	Escribir "1. Ingresar Número de Filas"
	leer f
	Escribir "2. Ingresar Número de Columnas"
	leer c
	Dimension m[f,c]
	Borrar Pantalla
	
	Repetir
		Escribir "Selecciona tu opción"
		
		Escribir "1. Llenar y Mostrar Matriz"
		Escribir "2. Mostrar suma de elementos"
		Escribir "3. Salir"
		leer opt
		Segun opt Hacer
			
			1:
				Llenar(f,c,m)
				MostrarMatriz(f,c,m)
				Escribir "Oprime cualquier tecla para seguir"
				Esperar Tecla
				
			2:
				SumarElementos(f,c,m,sumador)
				Escribir "La suma de todos los elementos es ", sumador
				Escribir "Oprime cualquier tecla para seguir"
				Esperar Tecla
			De Otro Modo:
				
		Fin Segun
		Borrar Pantalla
	Mientras Que opt<>3
FinAlgoritmo