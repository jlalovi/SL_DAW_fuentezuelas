/*

Ejercicio 5
===========

OBJETIVO: Pedir el d�a, mes y a�o de una fecha e indicar si la fecha es correcta. Con meses de 28, 30 y 31 d�as. CONSIDERANDO a�os bisiestos.

OBSERVACI�N: 

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 06-oct-2014

*/

var

	dia, mes, anyo : numerico
	fechaCorrecta, fechaIncorrecta : cadena
	dCorrecto, mCorrecto, aCorrecto : numerico // variable que utilizo para almacenar un 0 o 1 para almacenar si el dia, mes o a�o es correcto o incorrecto

inicio

	cls ()

	fechaCorrecta = "La fecha introducida es correcta."
	fechaIncorrecta = "La fecha introducida es incorrecta."

	imprimir ("PROGRAMA PARA SABER SI LA FECHA INTRODUCIDA ES CORRECTA:")

	imprimir ("\n\nIntroduce el d�a: ")
	leer (dia)

	imprimir ("\n\nIntroduce el mes: ")
	leer (mes)

	imprimir ("\n\nIntroduce el a�o: ")
	leer (anyo)


	// Analizo primero si los d�as son correctos, introduciendo un valor igual a '1' si es correcto y '0' si es incorrecto, en funci�n de las condiciones.
	eval {
		caso (mes == 2)                                                                            // Febrero
			si (dia > 0 and dia <= 29) {
				si (anyo%4 == 0 or (anyo%4 == 0 and anyo%100 == 0 and anyo%400 == 0)) {              // F�rmula para calcular a�o bisiesto              
					dCorrecto = 1
				sino si
					(dia > 0 and dia <= 28)
						dCorrecto = 1
				sino
					dCorrecto = 0
				}
			sino
				dCorrecto = 0
			}
		caso (mes == 4 or mes == 6 or mes == 9 or mes == 11)                                       // Abril, Junio, Septiembre y Noviembre.
			si (dia > 0 and dia <= 30) {
				dCorrecto = 1
			sino
				dCorrecto = 0
			}
		caso (mes == 1 or mes == 3 or mes == 5 or mes == 7                                         // Enero, Marzo, Mayo, Julio, Agosto, Octubre y Diciembre.
				or mes == 8 or mes == 10 or mes == 12)
			si (dia > 0 and dia <= 31) {
				dCorrecto = 1
			sino
				dCorrecto = 0
			}
	}

	// Analizo los meses y a�os de la misma manera
	si (mes > 0 and mes <= 12) {
		mCorrecto = 1
	sino
		mCorrecto = 0
	}
	si (anyo > 1900 and anyo <= 2015) {
		aCorrecto = 1
	sino
		aCorrecto = 0
	}

	// Imprimo un mensaje de fecha correcta o incorrecta en funci�n de las condiciones
	si (dCorrecto == 1 and mCorrecto == 1 and aCorrecto == 1) {
		imprimir ("\n", fechaCorrecta)
	sino
		imprimir ("\n", fechaIncorrecta)
	}

fin
