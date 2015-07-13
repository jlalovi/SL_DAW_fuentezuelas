/*

Ejercicio 7
===========

OBJETIVO:  Pedir dos n�meros y mostrarlos ordenados de mayor a menor.

OBSERVACI�N: El programa considera si los dos n�meros son iguales.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 29-sep-2014

*/

var

	n1, n2 : numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA ORDENAR DE MAYOR A MENOR:")

	imprimir ("\n\nIntroduce primer valor: ")
	leer (n1)

	imprimir ("\nIntroduce el segundo valor: ")
	leer (n2)

	si (n2 == n1) {
		imprimir ("\n�", n1, " y ", n2, " son iguales! ")
	sino si (n2 < n1)
		imprimir ("\nN�meros ordenados de mayor a menor:", "\n1. ", n1, "\n2. ", n2)
	sino
		imprimir ("\nN�meros ordenados de mayor a menor:", "\n1. ", n2, "\n2. ", n1)
	}

fin