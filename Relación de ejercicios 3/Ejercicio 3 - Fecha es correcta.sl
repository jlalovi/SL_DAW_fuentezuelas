/*

Ejercicio 3
===========

OBJETIVO: Pedir el día, mes y año de una fecha e indicar si la fecha es correcta. Suponiendo todos los meses de 30 días.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 06-oct-2014

*/

var

	dia, mes, anyo : numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA SABER SI LA FECHA INTRODUCIDA ES CORRECTA:")

	imprimir ("\n\nIntroduce el día: ")
	leer (dia)

	imprimir ("\n\nIntroduce el mes: ")
	leer (mes)

	imprimir ("\n\nIntroduce el año: ")
	leer (anyo)

	si (dia > 0 and dia <= 31                  // Dias entre 1 y 31
		and mes > 0 and mes <= 12               // Meses entre 1 y 12
		and anyo > 1990 and anyo <= 2015 ) {    // Fecha entre 1990 y 2015
		imprimir ("\nLa fecha introducida es correcta.")
	sino
		imprimir ("\nLa fecha introducida NO es correcta.")
	}

fin
