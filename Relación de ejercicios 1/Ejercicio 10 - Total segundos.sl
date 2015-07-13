/*

Ejercicio 10
============

OBJETIVO: Introduce por teclado horas, minutos y segundos y calcula el total de 
segundos que han transcurrido desde las 00:00:00.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 25-sep-2014

*/

var

	h, m, s, total : numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA CALCULAR EL NÚMERO TOTAL DE SEGUNDOS:")

	imprimir ("\n\nIntroduce el número de segundos ")
	leer (s)

	imprimir ("Introduce el número de minutos ")
	leer (m)

	imprimir ("Introduce el número de horas ")
	leer (h)
	
	total = s + m*60 + h*60*60

	imprimir ("\nEl valor total en segundos de las horas, minutos y segundos introducidos es:\n", total, " segundos.")

fin
