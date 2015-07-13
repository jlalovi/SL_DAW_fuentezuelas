/*

Ejercicio 3
===========

OBJETIVO:  Pedir un número e indicar si es positivo o negativo.

OBSERVACIÓn: El programa muestra también si el número es igual a 0.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 29-sep-2014

*/

var

	x : numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA SABER SI UN NÚMERO ES POSITIVO O NEGATIVO:")

	imprimir ("\n\nIntroduce valor que quieres comprobar: ")
	leer (x)

	si (x < 0) {
		imprimir ("\n¡Siempre negativo! ¡Nunca positivo! El valor es negativo.")
	sino si (x == 0)
		imprimir ("\nNi para tí, ni para mí. '0' no es positivo ni negativo.")
	sino
		imprimir ("\nAsí me gusta ¡con optimismo! El número es positivo.")
	}

fin
