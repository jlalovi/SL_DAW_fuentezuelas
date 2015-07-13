/*

Ejercicio 4
===========

OBJETIVO: Pedir el día, mes y año de una fecha e indicar si la fecha es correcta. Con meses de 28, 30 y 31 días. Sin años bisiestos.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 06-oct-2014

*/

var

	dia, mes, anyo : numerico
	fechaCorrecta, fechaIncorrecta : cadena

inicio

	cls ()

	fechaCorrecta = "La fecha introducida es correcta."
	fechaIncorrecta = "La fecha introducida es incorrecta."

	imprimir ("PROGRAMA PARA SABER SI LA FECHA INTRODUCIDA ES CORRECTA:")

	imprimir ("\n\nIntroduce el día: ")
	leer (dia)

	imprimir ("\n\nIntroduce el mes: ")
	leer (mes)

	imprimir ("\n\nIntroduce el año: ")
	leer (anyo)

	eval {
		caso (mes == 2)
			si (dia > 0 and dia <= 28                  // Dias entre 1 y 28: Febrero.
				and mes > 0 and mes <= 12               // Meses entre 1 y 12.
				and anyo > 1990 and anyo <= 2015 ) {    // Fecha entre 1990 y 2015.
				imprimir ("\n", fechaCorrecta)
			sino
				imprimir ("\n", fechaIncorrecta)
			}
		caso (mes == 4 or mes == 6 or mes == 9 or mes == 11)
			si (dia > 0 and dia <= 30                  // Dias entre 1 y 30: Abril, Junio, Septiembre y Noviembre.
				and mes > 0 and mes <= 12
				and anyo > 1990 and anyo <= 2015 ) {
				imprimir ("\n", fechaCorrecta)
			sino
				imprimir ("\n", fechaIncorrecta)
			}
		caso (mes == 1 or mes == 3 or mes == 5 or mes == 7 
				or mes == 8 or mes == 10 or mes == 12)
			si (dia > 0 and dia <= 31                  // Dias entre 1 y 31: Enero, Marzo, Mayo, Julio, Agosto, Octubre y Diciembre. 
				and mes > 0 and mes <= 12
				and anyo > 1990 and anyo <= 2015 ) {
				imprimir ("\n", fechaCorrecta)
			sino
				imprimir ("\n", fechaIncorrecta)
			}
		sino
			imprimir ("\n", fechaIncorrecta)
	}

fin
