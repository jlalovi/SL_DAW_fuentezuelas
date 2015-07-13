/*

Ejercicio 2
===========

OBJETIVO: Leer un valor numérico, doblarlo, multiplicarlo por 25 y visualizar el resultado.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 25-sep-2014

*/

var

	n, doblar, multiplica25 : numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA MOSTRAR EL VALOR INTRODUCIDO \nMULTIPLICADO POR 2 Y MULTIPLICADO POR 25:")

	imprimir ("\n\nIntroduce un valor ")
	leer (n)

	doblar = n * 2
	multiplica25 = n * 25

	imprimir ("\n", n, " multiplicado por 2 es igual a ", doblar)
	imprimir ("\nY ", n, " multiplicado por 25 es igual a ", multiplica25)

fin
