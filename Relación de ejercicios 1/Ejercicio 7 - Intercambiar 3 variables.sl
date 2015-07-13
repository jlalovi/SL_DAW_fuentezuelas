/*

Ejercicio 7
===========

OBJETIVO: Intercambiar el valor de 3 variables.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 25-sep-2014

*/
var

	x, y, z, w : numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA INTERCAMBIAR EL VALOR DE 2 VARIABLES:")

	imprimir ("\n\nIntroduce el valor de 'x' ")
	leer (x)

	imprimir ("Introduce el valor de 'y' ")
	leer (y)

	imprimir ("Introduce el valor de 'z' ")
	leer (z)

	imprimir ("\nEl valor de 'x' es ",x, ", el valor de 'y' es ",y, " y el valor de 'z' es ", z)

	w = x
	x = y
	y = z
	z = w

	imprimir ("\n\nPero ahora los valores se han intercambiado, siendo el de 'x' ",x, " el de 'y' ", y, " y el de 'z' ", z)

fin