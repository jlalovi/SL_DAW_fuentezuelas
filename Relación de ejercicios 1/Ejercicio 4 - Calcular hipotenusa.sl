/*

Ejercicio 4
===========

OBJETIVO: Calcular el valor de la hipotenusa de un triángulo conocidos los 2 catetos.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 25-sep-2014

*/
var

	n1, n2, hipotenusa: numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA CALCULAR LA HIPOTENUSA CONOCIENDO LOS DOS CATETOS:")

	imprimir ("\n\nIntroduce el valor del primer cateto ")
	leer (n1)

	imprimir ("Introduce el valor del segundo cateto ")
	leer (n2)

	hipotenusa = sqrt(n1*n1+n2*n2)

	imprimir ("\nEl valor de la hipotenusa conociendo los dos catetos es ", hipotenusa)

fin