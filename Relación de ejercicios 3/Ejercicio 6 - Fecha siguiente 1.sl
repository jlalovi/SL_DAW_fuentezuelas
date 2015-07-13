/*

Ejercicio 6
===========

OBJETIVO: Pedir el día, mes y año de una fecha correcta y mostrar la fecha del día siguiente. suponer  que todos los meses tienen treinta días.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 06-oct-2014

*/

var

	dia, mes, anyo : numerico       // Variables de lectura
	nDia, nMes, nAnyo : numerico    // Variables que adquirirán los nuevos valores

inicio

	cls ()

	imprimir ("PROGRAMA PARA MOSTRAR EL DÍA SIGUIENTE DE LA FECHA INTRODUCIDA:")

	imprimir ("\n\nIntroduce el día: ")
	leer (dia)

	imprimir ("\n\nIntroduce el mes: ")
	leer (mes)

	imprimir ("\n\nIntroduce el año: ")
	leer (anyo)

	si (dia > 0 and dia <= 30 and mes > 0 and mes <= 12 and anyo > 1900 and anyo <= 2015) {
		si (dia == 30) {
			nDia = 1
			si (mes == 12) {
				nMes = 1
				nAnyo = anyo + 1
			sino
				nMes = mes + 1
				nAnyo = anyo
			}
		sino
			nDia = dia + 1
			nMes = mes
			nAnyo = anyo
		}
	}

	imprimir ("\n La nueva fecha es: \n\nDía: ", nDia, "\nMes: ", nMes, "\nAño: ", nAnyo)


fin
