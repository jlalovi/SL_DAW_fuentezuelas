/*

Ejercicio 4
===========

OBJETIVO: Elaborar un programa que realice la opci�n seleccionada de acuerdo a lo siguiente:
				a. �rea de Tri�ngulo.
				b. �rea de Cuadrado.
				c. �rea de Circulo.
				d. �rea de Rect�ngulo.

OBSERVACIONES: - El programa permite seleccionar una opci�n independientemente de si la letra
					  es may�scula o min�scula.
					- Tambi�n introduzco un bucle para forzar al usuario a introducir uno de los valores
				     indicados.
					- Se considera que el usuario introducir� un valor correcto en las variables 'x' e 'y'
					  para calcular el �rea de algunas de las figuras geom�tricas.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 09-oct-2014

*/

const

	pi = 3.14159265359   // Valor de PI, para calcular el �rea del c�rculo.

var

	opcion : cadena      // Opci�n a elegir (a-d).
	  x, y : numerico    // Para ahorrar espacio en memoria, defino s�lo dos variables 
								// que pueden ser radio, lado, base o altura (en funci�n del �rea).
	  area : numerico    // En esta variable almacenar� el valor del �rea calculado.

inicio

	cls()

	imprimir ("PROGRAMA PARA CALCULAR �REAS:")
         
	imprimir ("\n\n�Qu� operaci�n matem�tica desea realizar?\n",
				"\n a) �rea de Tri�ngulo.",
				"\n b) �rea de Cuadrado.",
				"\n c) �rea de Circulo.",
				"\n d) �rea de Rect�ngulo.\n\n")
	leer(opcion)

	mientras (opcion<>"a" and opcion<>"A" and opcion<>"b" and opcion<>"B" and opcion<>"c"       // Este bucle lo creo para obligar al usuario a introducir uno de los valores
		and opcion<>"C" and opcion<>"d" and opcion<>"D") {	     // indicados 'a', 'b', 'c' o 'd', ya sean may�sculas o min�sculas.
	
		imprimir ("\nPor favor, introduce una letra de la 'a' a la 'd' ", 
					"para seleccionar una operaci�n correcta. ")
		leer(opcion)
	}

	// a) �REA TRI�NGULO
	si (opcion == "a" or opcion == "A") {

		imprimir ("\n\nHas elegido la opci�n 'a': �rea de un tri�ngulo.")
	
		imprimir ("\nPor favor, introduce el valor de la base del tri�ngulo: ")        // x = base
		leer(x)
	
		imprimir ("\n\nPor favor, introduce el valor de la altura del tri�ngulo: ")    // y = altura
		leer(y)

		area = x * y / 2                                                               // area = base * altura /2

	// b) �REA CUADRADO
	sino si (opcion == "b" or opcion == "B")

		imprimir ("\n\nHas elegido la opci�n 'b': �rea de un cuadrado.")
	
		imprimir ("\n\nPor favor, introduce el valor de un lado del cuadrado: ")       // x = lado
		leer(x)

		area = x * x                                                                   // area = lado * lado

	// c) �REA C�RCULO
	sino si (opcion == "c" or opcion == "C")

		imprimir ("\n\nHas elegido la opci�n 'c': �rea de un c�rculo.")
	
		imprimir ("\n\nPor favor, introduce el valor del radio del c�rculo: ")         // x = radio
		leer(x)

		area = pi * x * x                                                              // area = pi * radio * radio

	// d) �REA RECT�NGULO
	sino // Opciones 'd' y 'D' (opciones restantes por bucle inicial)

		imprimir ("\n\nHas elegido la opci�n 'd': �rea de un rect�ngulo.")
	
		imprimir ("\n\nPor favor, introduce el valor de la base del rect�ngulo: ")     // x = base
		leer(x)
	
		imprimir ("\nPor favor, introduce el valor de la altura del rect�ngulo: ")     // y = altura
		leer(y)

		area = x * y                                                                   // area = base * altura
	}

	imprimir ("\n  El �rea de la figura geom�trica seleccionada es: ", area)

fin
