/*

Ejercicio 7
===========

OBJETIVO: �dem que el ej. 6, suponiendo que cada mes tiene un n�mero distinto de d�as (suponer que febrero tiene siempre 28 d�as).

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 06-oct-2014

*/

var

	dia, mes, anyo : numerico       // Variables de lectura
	nDia, nMes, nAnyo : numerico    // Variables que adquirir�n los nuevos valores

inicio

	cls ()

	imprimir ("PROGRAMA PARA CONOCER EL D�A SIGUIENTE DE LA FECHA INTRODUCIDA:")

	imprimir ("\n\nIntroduce el d�a: ")
	leer (dia)

	imprimir ("\n\nIntroduce el mes: ")
	leer (mes)

	imprimir ("\n\nIntroduce el a�o: ")
	leer (anyo)

	eval {
		caso (mes == 2)                                                                               // 28 d�as. Febrero.
			si (dia > 0 and dia <= 28 and mes > 0 and mes <= 12 and anyo > 1900 and anyo <= 2015) {
				si (dia == 28) {
					nDia = 1
					nMes = mes + 1
					nAnyo = anyo
				sino
					nDia = dia + 1
					nMes = mes
					nAnyo = anyo
				}
			}
		caso (mes == 4 or mes == 6 or mes == 9 or mes == 11)                                          // 30 d�as. Abril, Junio, Septiembre y Noviembre.
			si (dia > 0 and dia <= 30 and mes > 0 and mes <= 12 and anyo > 1900 and anyo <= 2015) {
				si (dia == 30) {
					nDia = 1
					nMes = mes + 1
					nAnyo = anyo
				sino
					nDia = dia + 1
					nMes = mes
					nAnyo = anyo
				}
			}
		caso (mes == 1 or mes == 3 or mes == 5 or mes == 7 or mes == 8 or mes == 10 or mes == 12)    // 31 d�as. Enero, Marzo, Mayo, Julio, Agosto, Octubre y Diciembre.
			si (dia > 0 and dia <= 31 and mes > 0 and mes <= 12 and anyo > 1900 and anyo <= 2015) {
				si (dia == 31) {
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
	}

	imprimir ("\n La nueva fecha es: \n\nD�a: ", nDia, "\nMes: ", nMes, "\nA�o: ", nAnyo)


fin
