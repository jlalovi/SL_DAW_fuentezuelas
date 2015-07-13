/*

Ejercicio 5 y 6
===============

OBJETIVO:  Pedir dos números y decir cual es el mayor (Ejercicio 5).

OBSERVACIÓN: El programa considera si los dos números son iguales (Ejercicio 6).

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 29-sep-2014

*/

var

	n1, n2 : numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA DECIR QUÉ NÚMERO ES EL MAYOR:")

	imprimir ("\n\nIntroduce primer valor: ")
	leer (n1)

	imprimir ("\nIntroduce el segundo valor: ")
	leer (n2)

	si (n2 == n1) {
		imprimir ("\n¡", n1, " y ", n2, " son iguales! ")
	sino si (n2 < n1)
		imprimir ("\n", n1, " es mayor que ", n2)
	sino
		imprimir ("\n", n2, " es mayor que ", n1)
	}

fin