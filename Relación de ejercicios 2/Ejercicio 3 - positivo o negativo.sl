/*

Ejercicio 3
===========

OBJETIVO:  Pedir un n�mero e indicar si es positivo o negativo.

OBSERVACI�n: El programa muestra tambi�n si el n�mero es igual a 0.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 29-sep-2014

*/

var

	x : numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA SABER SI UN N�MERO ES POSITIVO O NEGATIVO:")

	imprimir ("\n\nIntroduce valor que quieres comprobar: ")
	leer (x)

	si (x < 0) {
		imprimir ("\n�Siempre negativo! �Nunca positivo! El valor es negativo.")
	sino si (x == 0)
		imprimir ("\nNi para t�, ni para m�. '0' no es positivo ni negativo.")
	sino
		imprimir ("\nAs� me gusta �con optimismo! El n�mero es positivo.")
	}

fin
