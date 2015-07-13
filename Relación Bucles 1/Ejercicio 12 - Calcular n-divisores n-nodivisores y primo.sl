/*

Ejercicio 12
============

OBJETIVO: Programa que le pide al usuario un n�mero (0-1000) y calcula todos los divisores menores de este mismo n�mero, mostr�ndolos en pantalla.

OBSERVACI�N: Sabiendo que un n�mero primo s�lo es divisible por s� mismo y por 1, esto me dar� una pista para crear el condicional del final del programa.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 22-oct-2014

*/

var

			  tope : numerico   // N�mero introducido por el usuario.
				  i : numerico   // Variable de control para las iteraciones del bucle.
	  divisibles : numerico   // Contador para conocer el n�mero de divisibles en el n�mero.
	noDivisibles : numerico   // Contador para conocer el n�mero de no divisibles en el n�mero.

inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA LA CANTIDAD DE DIVISORES Y NO DIVISORES DE UN N�MERO\n")

	repetir
		imprimir("\nIntroduce un n�mero del 0 al 1000 para conocer sus divisibles: ")
		leer (tope)
	hasta (tope>=0 and tope<=1000)

	divisibles = 0   // aunque el valor de divisibles y noDivisibles empieza siendo 0 por defecto, lo especifico para remarcarlo.
	noDivisibles = 0

	desde i = 1 hasta tope {
		si (tope%i==0) {
			divisibles = divisibles + 1
		sino
			noDivisibles = noDivisibles + 1
		}
	}

	imprimir("\nEn total, ", tope," tiene ", divisibles, " n�meros divisibles y ", noDivisibles, " n�meros no divisibles." )

	si (divisibles == 2) {
		imprimir("\n", tope, " es un n�mero primo.")
	sino
		imprimir("\n", tope, " NO es un n�mero primo.")
	}


fin