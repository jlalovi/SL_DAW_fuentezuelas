/*

Ejercicio 4
===========

OBJETIVO: Elaborar un programa que realice la opción seleccionada de acuerdo a lo siguiente:
				a. Área de Triángulo.
				b. Área de Cuadrado.
				c. Área de Circulo.
				d. Área de Rectángulo.

OBSERVACIONES: - El programa permite seleccionar una opción independientemente de si la letra
					  es mayúscula o minúscula.
					- También introduzco un bucle para forzar al usuario a introducir uno de los valores
				     indicados.
					- Se considera que el usuario introducirá un valor correcto en las variables 'x' e 'y'
					  para calcular el área de algunas de las figuras geométricas.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 09-oct-2014

*/

const

	pi = 3.14159265359   // Valor de PI, para calcular el área del círculo.

var

	opcion : cadena      // Opción a elegir (a-d).
	  x, y : numerico    // Para ahorrar espacio en memoria, defino sólo dos variables 
								// que pueden ser radio, lado, base o altura (en función del área).
	  area : numerico    // En esta variable almacenaré el valor del área calculado.

inicio

	cls()

	imprimir ("PROGRAMA PARA CALCULAR ÁREAS:")
         
	imprimir ("\n\n¿Qué operación matemática desea realizar?\n",
				"\n a) Área de Triángulo.",
				"\n b) Área de Cuadrado.",
				"\n c) Área de Circulo.",
				"\n d) Área de Rectángulo.\n\n")
	leer(opcion)

	mientras (opcion<>"a" and opcion<>"A" and opcion<>"b" and opcion<>"B" and opcion<>"c"       // Este bucle lo creo para obligar al usuario a introducir uno de los valores
		and opcion<>"C" and opcion<>"d" and opcion<>"D") {	     // indicados 'a', 'b', 'c' o 'd', ya sean mayúsculas o minúsculas.
	
		imprimir ("\nPor favor, introduce una letra de la 'a' a la 'd' ", 
					"para seleccionar una operación correcta. ")
		leer(opcion)
	}

	// a) ÁREA TRIÁNGULO
	si (opcion == "a" or opcion == "A") {

		imprimir ("\n\nHas elegido la opción 'a': Área de un triángulo.")
	
		imprimir ("\nPor favor, introduce el valor de la base del triángulo: ")        // x = base
		leer(x)
	
		imprimir ("\n\nPor favor, introduce el valor de la altura del triángulo: ")    // y = altura
		leer(y)

		area = x * y / 2                                                               // area = base * altura /2

	// b) ÁREA CUADRADO
	sino si (opcion == "b" or opcion == "B")

		imprimir ("\n\nHas elegido la opción 'b': Área de un cuadrado.")
	
		imprimir ("\n\nPor favor, introduce el valor de un lado del cuadrado: ")       // x = lado
		leer(x)

		area = x * x                                                                   // area = lado * lado

	// c) ÁREA CÍRCULO
	sino si (opcion == "c" or opcion == "C")

		imprimir ("\n\nHas elegido la opción 'c': Área de un círculo.")
	
		imprimir ("\n\nPor favor, introduce el valor del radio del círculo: ")         // x = radio
		leer(x)

		area = pi * x * x                                                              // area = pi * radio * radio

	// d) ÁREA RECTÁNGULO
	sino // Opciones 'd' y 'D' (opciones restantes por bucle inicial)

		imprimir ("\n\nHas elegido la opción 'd': Área de un rectángulo.")
	
		imprimir ("\n\nPor favor, introduce el valor de la base del rectángulo: ")     // x = base
		leer(x)
	
		imprimir ("\nPor favor, introduce el valor de la altura del rectángulo: ")     // y = altura
		leer(y)

		area = x * y                                                                   // area = base * altura
	}

	imprimir ("\n  El área de la figura geométrica seleccionada es: ", area)

fin
