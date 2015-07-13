/*

Ejercicio 2
===========

OBJETIVO:  Pedir dos números y decir si son iguales o no.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 29-sep-2014

*/

var

	n1, n2 : numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA SABER SI DOS NÚMEROS SON IGUALES O NO:")

	imprimir ("\n\nIntroduce el primer valor ")
	leer (n1)

	imprimir ("Introduce el segundo valor ")
	leer (n2)

	si (n1 == n2) {
		imprimir ("\n¡Enhorabuena! ¡Los números son iguales!")
	sino
		imprimir ("\n¡Bien! Se ve que te gusta la diversidad ¡Los valores son diferentes!")
	}

fin
