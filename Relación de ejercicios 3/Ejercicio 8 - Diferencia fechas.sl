/*

Ejercicio 8
===========

OBJETIVO: Pedir dos fechas y mostrar el número de días que hay de diferencia. Suponiendo todos los meses de 30 días.

OBSERVACIÓN: He considerado que la primera fecha sea menor a la segunda, indicando aún así la diferencia en días, sin que aparezca expresada en números negativos.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 06-oct-2014

*/

var

	dia1, mes1, anyo1, dia2, mes2, anyo2 : numerico       // Variables de lectura
	diasDiferencia : numerico                             // Variables que adquirirán los nuevos valores

inicio

	cls ()

	imprimir ("PROGRAMA PARA MOSTRAR EL NÚMERO DE DÍAS QUE HAY DE DIFERENCIA:")

	imprimir ("\n\nIntroduce el día: ")
	leer (dia1)

	imprimir ("\n\nIntroduce el mes: ")
	leer (mes1)

	imprimir ("\n\nIntroduce el año: ")
	leer (anyo1)

	imprimir ("\n\nIntroduce el día: ")
	leer (dia2)

	imprimir ("\n\nIntroduce el mes: ")
	leer (mes2)

	imprimir ("\n\nIntroduce el año: ")
	leer (anyo2)

	si ( (dia1 > 0 and dia1 <= 30 and mes1 > 0 and mes1 <= 12 and anyo1 > 1900 and anyo1 <= 2015) and
		(dia2 > 0 and dia2 <= 30 and mes2 > 0 and mes2 <= 12 and anyo2 > 1900 and anyo2 <= 2015) ) {
		diasDiferencia = ((anyo1 * 365)+(mes1 * 30)+(dia1))  -  ((anyo2 * 365)+(mes2 * 30)+(dia2))   // He puesto paréntesis y espacios de más para hacer más legible la fórmula.
		diasDiferencia = (diasDiferencia^2)^(1/2)                                                 // Para evitar un número negativo como resultado, hago el cuadrado y la raíz de éste.

		imprimir ("\n La diferencia en días de ambas fechas es de ", diasDiferencia)
	sino
		imprimir ("\nAlguna de las dos fechas introducidas no es correcta.")
	}




fin
