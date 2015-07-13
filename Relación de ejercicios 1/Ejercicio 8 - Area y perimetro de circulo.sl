/*

Ejercicio 8
===========

OBJETIVO: Calcular el per�metro de una circunferencia y el �rea del c�rculo.

OBSERVACI�N: El programa muestra un error cuando el radio tiene un valor negativo, forzando al usuario a introducir otro valor.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 25-sep-2014

*/
const

	pi: 3.14159265359

var

	r, perimetro, area : numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA CALCULAR EL PER�METRO Y EL �REA DE UN C�RCULO:")

	imprimir ("\n\nIntroduce el valor del radio ")
	leer (r)
	// Para evitar el error cuando el radio es negativo
	repetir
		si (r<0) {
			imprimir ("El valor del radio no puede ser negativo. Introd�celo de nuevo: ")
			leer (r)
		}
	hasta (r >= 0)

	perimetro = 2 * pi * r
	area = pi * r^2

	imprimir ("\nEl per�metro de la circunferencia es ",perimetro , " y el �rea es ", area)

fin