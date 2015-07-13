/*

Ejercicio X
===========

OBJETIVO: Almacenar en un vector los 18 primeros decimales de PI.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 21-oct-2014

*/

const

	tope: 10000000      // Aún cuando el bucle es tan alto, los decimales de PI empiezan a ser incorrectos en la posición 10.

var

	decimalesPi: numerico
	i: numerico
	contador : numerico
	decimalPi : vector [18] numerico

inicio

	cls()

	imprimir ("PROGRAMA QUE CALCULA EL NÚMERO PI")

	decimalesPi = (4 / (2*3*4))

	contador = 2

	desde i=1 hasta tope paso 1 {
		si (i%2==1) {
			decimalesPi = decimalesPi - (4 / ((2+contador)*(3+contador)*(4+contador)))
			contador = contador + 2
		sino
			decimalesPi = decimalesPi + (4 / ((2+contador)*(3+contador)*(4+contador)))
			contador = contador + 2
		}
	}

	desde i=1 hasta 18 {
		decimalPi[i] = decimalesPi*10%10
		decimalesPi = decimalesPi*10 - decimalPi[i]
	}

	imprimir("\n\nLos 18 primeros decimales del número PI son:\n", decimalPi)

fin