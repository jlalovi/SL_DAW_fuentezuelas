/*

Ejercicio 9
===========

OBJETIVO: Dado un n�mero muestra por pantalla el anterior y el posterior
utilizando �nicamente las instrucciones de imprimir y de leer.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 25-sep-2014

*/
var

	n : numerico

inicio

	cls ()

	imprimir ("PROGRAMA QUE MUESTRA EL N�MERO ANTERIOR Y POSTERIOR DEL INTRODUCIDO:")

	imprimir ("\n\nIntroduce el valor de 'n' ")
	leer (n)

	imprimir ("\nEl valor anterior de 'n' es ",n-1, " y el valor posterior es ", n+1)

fin
