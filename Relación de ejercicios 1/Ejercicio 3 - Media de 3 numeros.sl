/*

Ejercicio 3
===========

OBJETIVO: Calcular media aritmética de 3 números.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 25-sep-2014

*/

var

	n1, n2, n3, media : numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA MOSTRAR LA MEDIA ARITMÉTICA DE 3 NÚMEROS:")

	imprimir ("\n\nIntroduce el primer valor ")
	leer (n1)

	imprimir ("Introduce el segundo valor ")
	leer (n2)

	imprimir ("Introduce el tercer valor ")
	leer (n3)

	media = (n1+n2+n3)/3

	imprimir ("\nLa media aritmética de los 3 valores introducidos es igual a ", media)

fin
