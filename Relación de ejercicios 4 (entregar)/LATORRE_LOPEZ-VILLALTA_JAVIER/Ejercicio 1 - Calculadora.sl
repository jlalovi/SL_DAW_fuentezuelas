/*

Ejercicio 1
===========

OBJETIVO: Elaborar un programa que permita introducir dos n�meros por el teclado y mediante 
			 un men� elegir si se quiere  calcular su suma, su producto, su resta, su divisi�n 
			 o su m�dulo.

OBSERVACIONES: - El programa permite seleccionar una opci�n a = suma, b = resta, c = producto, 
				     d = divisi�n y e = m�dulo, independientemente de si la letra es may�scula o min�scula.
					- Tambi�n introduzco un bucle para forzar al usuario a introducir uno de los valores
				     indicados.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 09-oct-2014

*/

var

	x, y : numerico    // Valores a introducir por el usuario para hacer el c�lculo
	opcion : cadena    // Opci�n a elegir

inicio

	cls()

	imprimir ("PROGRAMA PARA CALCULAR OPERACIONES ARITM�TICAS B�SICAS:")
         
	imprimir ("\n\n�Qu� operaci�n matem�tica desea realizar?\n",
				"\n a) Suma",
				"\n b) Resta",
				"\n c) Producto",
				"\n d) Divisi�n",
				"\n e) M�dulo\n\n")
	leer(opcion)

	mientras (opcion<>"a" and opcion<>"A" and opcion<>"b" and opcion<>"B" and opcion<>"c"       // Este bucle lo creo para obligar al usuario a introducir uno de los valores
		and opcion<>"C" and opcion<>"d" and opcion<>"D" and opcion<>"e" and opcion<>"E") {	     // indicados 'a', 'b', 'c', 'd' o 'e', ya sean may�sculas o min�sculas.
	
		imprimir ("\nPor favor, introduce una letra de la 'a' a la 'e' ", 
					"para seleccionar una operaci�n matem�tica. ")
		leer(opcion)
	}

	imprimir ("\nIntroduce el valor del primer n�mero: ")
	leer(x)

	imprimir ("\nIntroduce el valor del segundo n�mero: ")
	leer(y)

	si (opcion == "a" or opcion == "A") {

		imprimir("\n ", x, " + ", y, " = ", x+y)

	sino si (opcion == "b" or opcion == "B")

		imprimir("\n ", x, " - ", y, " = ", x-y)

	sino si (opcion == "c" or opcion == "C")

		imprimir("\n ", x, " x ", y, " = ", x*y)

	sino si (opcion == "d" or opcion == "D")

		imprimir("\n ", x, " : ", y, " = ", x/y)

	sino // opciones 'e' y 'E'. El bucle del principio obliga a que �stos sean los �nicos valores restantes.

		imprimir("\n ", x, " MOD ", y, " = ", x%y)

	}

fin
