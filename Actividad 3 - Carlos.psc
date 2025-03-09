//?? Actividad 3
//Crea un programa que cumpla con las siguientes condiciones:
//Define y dimensiona una matriz de 5x5 para almacenar datos num�ricos enteros.
//Rellena la matriz de manera aleatoria con n�meros comprendidos entre 10 y 40.
//Permite al usuario ingresar un n�mero para buscarlo dentro de la matriz.
//Si el n�mero se encuentra, muestra en pantalla un mensaje adecuado junto con
//las coordenadas en la matriz (fila y columna). En caso de que el n�mero est�
//repetido, solo se mostrar� la posici�n de la primera ocurrencia.
//Si el n�mero no se encuentra, informa por pantalla.
SubProceso Llenar(f,c,m)
	Definir i,j Como Entero
	Para i<-0 Hasta f-1 Con Paso 1 Hacer
		Para j<-0 Hasta c-1 Con Paso 1 Hacer
			m[i,j]=Aleatorio(10,40)
		Fin Para
	Fin Para
FinSubProceso

SubProceso BuscarNumero (f,c,m,num1,encontrado Por Referencia,mensaje Por Referencia)
	Definir i,j Como Entero
	encontrado = Falso
	Para i<-0 Hasta f-1 Con Paso 1 Hacer
		Para j<-0 Hasta c-1 Con Paso 1 Hacer
			si (m[i,j]==num1) Entonces
				encontrado = verdadero
				mensaje = mensaje + "["+ConvertirATexto(i)+","+ConvertirATexto(j)+"]"+","
			FinSi
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

Algoritmo EncontrarNumeroEnMatriz
	Definir f,c,m,num1, opt Como Entero
	definir mensaje como cadena
	definir encontrado Como Logico
	mensaje = ""
	
	Escribir "1. Ingresar N�mero de Filas"
	leer f
	Escribir "2. Ingresar N�mero de Columnas"
	leer c
	Dimension m[f,c]
	Llenar(f,c,m)
	MostrarMatriz(f,c,m)
	Escribir "Oprime cualquier tecla para seguir"
	Esperar Tecla
	
	Borrar Pantalla
	Repetir
		Escribir "1. Para Ingresar Tu N�mero"
		Escribir "2. Rellenar Matriz con n�meros nuevos"
		Escribir "3. Mostrar Matriz"
		Escribir "4. Salir"
		leer opt
		Segun opt Hacer
			
			1:
				Escribir "Ingresa tu n�mero (recuerda que est� entre 10 y 40)"
				leer num1
				BuscarNumero(f,c,m,num1,encontrado,mensaje)
				//Escribir "prueba afuera del si"
				Si (encontrado==verdadero) Entonces
					// Escribir "prueba encontrado"
					Escribir mensaje
				SiNo
					Escribir "prueba"
					Escribir "El n�mero que buscas no est� en la matriz"
				FinSi
				mensaje = ""
				Escribir "Oprime cualquier tecla para seguir"
				Esperar Tecla
				
				// Llenar(f,c,m)
				// MostrarMatriz(f,c,m)
				
				
			2:
				Llenar(f,c,m)
				MostrarMatriz(f,c,m)
				Escribir "Oprime cualquier tecla para seguir"
				Esperar Tecla
			3:
				MostrarMatriz(f,c,m)
				Escribir "Oprime cualquier tecla para seguir"
				Esperar Tecla
				
		Fin Segun
		Borrar Pantalla
	Mientras Que opt<>4
FinAlgoritmo