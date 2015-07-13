/*

Ejercicio 5
===========

OBJETIVO: Calcula una ecuación de segundo grado.

OBSERVACIONES: El programa tiene en cuenta el valor 'Delta' o 'discriminante':
					Delta = 0 -> Ecuación de segundo grado con solución doble.
					Delta > 0 -> Ecuación de segundo grado con dos soluciones reales.
					Delta < 0 -> Ecuación de segundo grado con dos soluciones complejas conjugadas.
					
					El programa también tiene en cuenta si a = 0, indicando que se trata de
					una ecuación simple y su resultado.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 25-sep-2014

*/

var

	x1, x2, a, b, c, D: numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA CALCULAR UNA ECUACIÓN DE SEGUNDO GRADO:")

	imprimir ("\n\nSi una ecuación de segundo grado se expresa como 'ax^2 + bx + c = 0':")

	imprimir ("\n\nIntroduce el valor numérico de 'a' ")
	leer (a)

	imprimir ("Introduce el valor numérico de 'b' ")
	leer (b)

	imprimir ("Introduce el valor numérico de 'c' ")
	leer (c)

	D = b^2 - 4 * a* c // Valor 'Delta' o 'discriminante'

	// Primero comprobamos que la ecuación es de segundo grado si a es diferente a '0'.
	si (a == 0) {

		x1 = -c/b
		imprimir ("\n\nAl ser el valor 'a' igual a '0', la ecuación sería simple. No obstante, el valor de 'x' es: ", x1)

	sino

		// Considerando que una ecuación cuadrática puede ser de diferente índole en función del valor de 'Delta' (ver observaciones):	
		si (D > 0) {
	
			x1 = (-b + (b^2 - 4*a*c)^(1/2)) / 2*a
			x2 = (-b - (b^2 - 4*a*c)^(1/2)) / 2*a
	
			imprimir ("\n\nLa ecuación tiene dos soluciones, que son números reales distintos: ", x1, " y ",x2)
	
		sino si (D == 0)
	
			x1 = -b/2*a
	
			imprimir ("\n\nLa ecuación tiene una solución doble: ", x1)
	
		sino // (D < 0)
	
			imprimir ("\n\nLa ecuación no tiene soluciones reales.",
						"\nHabría que calcular las dos soluciones complejas conjugadas:",
						"\nx1 = -b/2a + i*(-D)^(1/2)/2*a",
						"\nx2 = -b/2a - i*(-D)^(1/2)/2*a"
						)
		}
	}
fin