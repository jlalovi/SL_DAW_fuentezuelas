/*

Ejercicio 1
===========

OBJETIVO: Elaborar un programa que permita introducir dos números por el teclado y mediante 
			 un menú elegir si se quiere  calcular su suma, su producto, su resta, su división 
			 o su módulo.

OBSERVACIONES: - El programa permite seleccionar una opción a = suma, b = resta, c = producto, 
				     d = división y e = módulo, independientemente de si la letra es mayúscula o minúscula.
					- También introduzco un bucle para forzar al usuario a introducir uno de los valores
				     indicados.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 09-oct-2014

*/

var

	x, y : numerico    // Valores a introducir por el usuario para hacer el cálculo
	opcion : cadena    // Opción a elegir

inicio

	cls()

	imprimir ("PROGRAMA PARA CALCULAR OPERACIONES ARITMÉTICAS BÁSICAS:")
         
	imprimir ("\n\n¿Qué operación matemática desea realizar?\n",
				"\n a) Suma",
				"\n b) Resta",
				"\n c) Producto",
				"\n d) División",
				"\n e) Módulo\n\n")
	leer(opcion)

	mientras (opcion<>"a" and opcion<>"A" and opcion<>"b" and opcion<>"B" and opcion<>"c"       // Este bucle lo creo para obligar al usuario a introducir uno de los valores
		and opcion<>"C" and opcion<>"d" and opcion<>"D" and opcion<>"e" and opcion<>"E") {	     // indicados 'a', 'b', 'c', 'd' o 'e', ya sean mayúsculas o minúsculas.
	
		imprimir ("\nPor favor, introduce una letra de la 'a' a la 'e' ", 
					"para seleccionar una operación matemática. ")
		leer(opcion)
	}

	imprimir ("\nIntroduce el valor del primer número: ")
	leer(x)

	imprimir ("\nIntroduce el valor del segundo número: ")
	leer(y)

	si (opcion == "a" or opcion == "A") {

		imprimir("\n ", x, " + ", y, " = ", x+y)

	sino si (opcion == "b" or opcion == "B")

		imprimir("\n ", x, " - ", y, " = ", x-y)

	sino si (opcion == "c" or opcion == "C")

		imprimir("\n ", x, " x ", y, " = ", x*y)

	sino si (opcion == "d" or opcion == "D")

		imprimir("\n ", x, " : ", y, " = ", x/y)

	sino // opciones 'e' y 'E'. El bucle del principio obliga a que éstos sean los únicos valores restantes.

		imprimir("\n ", x, " MOD ", y, " = ", x%y)

	}

fin
