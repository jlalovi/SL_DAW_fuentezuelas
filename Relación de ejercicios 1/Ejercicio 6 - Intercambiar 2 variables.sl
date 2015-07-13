/*

Ejercicio 6
===========

OBJETIVO: Intercambiar el valor de 2 variables.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 25-sep-2014

*/

var

	x, y, z : numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA INTERCAMBIAR EL VALOR DE 2 VARIABLES:")

	imprimir ("\n\nIntroduce el valor de 'x' ")
	leer (x)

	imprimir ("Introduce el valor de 'y' ")
	leer (y)

	imprimir ("\nEl valor de 'x' es ",x, " y el valor de 'y' es ", y)

	z = x
	x = y
	y = z

	imprimir ("\n\nPero ahora los valores se han intercambiado, siendo el de 'x' ",x, " y el de 'y' ", y)

fin
