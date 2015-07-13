/*

Ejercicio 5
===========

OBJETIVO: Calcula una ecuaci�n de segundo grado.

OBSERVACIONES: El programa tiene en cuenta el valor 'Delta' o 'discriminante':
					Delta = 0 -> Ecuaci�n de segundo grado con soluci�n doble.
					Delta > 0 -> Ecuaci�n de segundo grado con dos soluciones reales.
					Delta < 0 -> Ecuaci�n de segundo grado con dos soluciones complejas conjugadas.
					
					El programa tambi�n tiene en cuenta si a = 0, indicando que se trata de
					una ecuaci�n simple y su resultado.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 25-sep-2014

*/

var

	x1, x2, a, b, c, D: numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA CALCULAR UNA ECUACI�N DE SEGUNDO GRADO:")

	imprimir ("\n\nSi una ecuaci�n de segundo grado se expresa como 'ax^2 + bx + c = 0':")

	imprimir ("\n\nIntroduce el valor num�rico de 'a' ")
	leer (a)

	imprimir ("Introduce el valor num�rico de 'b' ")
	leer (b)

	imprimir ("Introduce el valor num�rico de 'c' ")
	leer (c)

	D = b^2 - 4 * a* c // Valor 'Delta' o 'discriminante'

	// Primero comprobamos que la ecuaci�n es de segundo grado si a es diferente a '0'.
	si (a == 0) {

		x1 = -c/b
		imprimir ("\n\nAl ser el valor 'a' igual a '0', la ecuaci�n ser�a simple. No obstante, el valor de 'x' es: ", x1)

	sino

		// Considerando que una ecuaci�n cuadr�tica puede ser de diferente �ndole en funci�n del valor de 'Delta' (ver observaciones):	
		si (D > 0) {
	
			x1 = (-b + (b^2 - 4*a*c)^(1/2)) / 2*a
			x2 = (-b - (b^2 - 4*a*c)^(1/2)) / 2*a
	
			imprimir ("\n\nLa ecuaci�n tiene dos soluciones, que son n�meros reales distintos: ", x1, " y ",x2)
	
		sino si (D == 0)
	
			x1 = -b/2*a
	
			imprimir ("\n\nLa ecuaci�n tiene una soluci�n doble: ", x1)
	
		sino // (D < 0)
	
			imprimir ("\n\nLa ecuaci�n no tiene soluciones reales.",
						"\nHabr�a que calcular las dos soluciones complejas conjugadas:",
						"\nx1 = -b/2a + i*(-D)^(1/2)/2*a",
						"\nx2 = -b/2a - i*(-D)^(1/2)/2*a"
						)
		}
	}
fin