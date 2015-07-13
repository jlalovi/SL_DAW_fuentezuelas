/*

Ejercicio 8
===========

OBJETIVO: Pedir dos fechas y mostrar el n�mero de d�as que hay de diferencia. Suponiendo todos los meses de 30 d�as.

OBSERVACI�N: He considerado que la primera fecha sea menor a la segunda, indicando a�n as� la diferencia en d�as, sin que aparezca expresada en n�meros negativos.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 06-oct-2014

*/

var

	dia1, mes1, anyo1, dia2, mes2, anyo2 : numerico       // Variables de lectura
	diasDiferencia : numerico                             // Variables que adquirir�n los nuevos valores

inicio

	cls ()

	imprimir ("PROGRAMA PARA MOSTRAR EL N�MERO DE D�AS QUE HAY DE DIFERENCIA:")

	imprimir ("\n\nIntroduce el d�a: ")
	leer (dia1)

	imprimir ("\n\nIntroduce el mes: ")
	leer (mes1)

	imprimir ("\n\nIntroduce el a�o: ")
	leer (anyo1)

	imprimir ("\n\nIntroduce el d�a: ")
	leer (dia2)

	imprimir ("\n\nIntroduce el mes: ")
	leer (mes2)

	imprimir ("\n\nIntroduce el a�o: ")
	leer (anyo2)

	si ( (dia1 > 0 and dia1 <= 30 and mes1 > 0 and mes1 <= 12 and anyo1 > 1900 and anyo1 <= 2015) and
		(dia2 > 0 and dia2 <= 30 and mes2 > 0 and mes2 <= 12 and anyo2 > 1900 and anyo2 <= 2015) ) {
		diasDiferencia = ((anyo1 * 365)+(mes1 * 30)+(dia1))  -  ((anyo2 * 365)+(mes2 * 30)+(dia2))   // He puesto par�ntesis y espacios de m�s para hacer m�s legible la f�rmula.
		diasDiferencia = (diasDiferencia^2)^(1/2)                                                 // Para evitar un n�mero negativo como resultado, hago el cuadrado y la ra�z de �ste.

		imprimir ("\n La diferencia en d�as de ambas fechas es de ", diasDiferencia)
	sino
		imprimir ("\nAlguna de las dos fechas introducidas no es correcta.")
	}




fin
