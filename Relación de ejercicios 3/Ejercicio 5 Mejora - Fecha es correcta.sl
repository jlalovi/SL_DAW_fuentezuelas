/*

Ejercicio 5
===========

OBJETIVO: Pedir el día, mes y año de una fecha e indicar si la fecha es correcta. Con meses de 28, 30 y 31 días. CONSIDERANDO años bisiestos.

OBSERVACIÓN: Se enviará un mensaje de error en función del tipo de error en día, mes o año.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 06-oct-2014

*/

var

	dia, mes, anyo : numerico
	fechaCorrecta, fechaIncorrecta : cadena
	dCorrecto, mCorrecto, aCorrecto : numerico // variable que utilizo para almacenar un 0 o 1 para almacenar si el dia, mes o año es correcto o incorrecto

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


	// Analizo primero si los días son correctos, introduciendo un valor igual a '1' si es correcto y '0' si es incorrecto, en función de las condiciones.
	eval {
		caso (mes == 2)                                                                            // Febrero
			si (dia == 29) {
				si (anyo%4 == 0 or (anyo%4 == 0 and anyo%100 == 0 and anyo%400 == 0)) {              // Fórmula para calcular año bisiesto              
					dCorrecto = 1
				sino
					dCorrecto = 0
					imprimir ("\nEl año no es bisiesto, por lo que el día 29 en este caso es incorrecto.")
				}
			sino si (dia > 0 and dia <= 28)
				dCorrecto = 1
			sino
				dCorrecto = 0
				imprimir ("\nEl día '", dia ,"' no forma parte del mes de Febrero.")
			}
		caso (mes == 4 or mes == 6 or mes == 9 or mes == 11)                                       // Abril, Junio, Septiembre y Noviembre.
			si (dia > 0 and dia <= 30) {
				dCorrecto = 1
			sino
				dCorrecto = 0
				imprimir ("\nEl día '", dia ,"' no forma parte del mes introducido porque no comprende del 1 al 30.")
			}
		caso (mes == 1 or mes == 3 or mes == 5 or mes == 7                                         // Enero, Marzo, Mayo, Julio, Agosto, Octubre y Diciembre.
				or mes == 8 or mes == 10 or mes == 12)
			si (dia > 0 and dia <= 31) {
				dCorrecto = 1
			sino
				dCorrecto = 0
				imprimir ("\nEl día '", dia ,"' no forma parte del mes introducido porque no comprende del 1 al 31.")
			}
		sino
			imprimir ("\nEl día '", dia ,"' está fuera de cualquier rango posible entre el 1 y el 31.")
	}

	// Analizo los meses y años de la misma manera
	si (mes > 0 and mes <= 12) {
		mCorrecto = 1
	sino
		mCorrecto = 0
		imprimir ("\nEl mes '", mes ,"' no forma parte de algún mes entre el 1 y el 12.")
	}
	si (anyo > 1900 and anyo <= 2015) {
		aCorrecto = 1
	sino
		aCorrecto = 0
		imprimir ("\nEl año '", anyo ,"' no forma parte de algún año entre el 1900 y el 2015.")
	}

	// Imprimo un mensaje de fecha correcta o incorrecta en función de las condiciones
	si (dCorrecto == 1 and mCorrecto == 1 and aCorrecto == 1) {
		imprimir ("\n", fechaCorrecta)
	sino
		imprimir ("\n", fechaIncorrecta)
	}

fin
