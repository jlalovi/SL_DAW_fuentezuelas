/*

Ejercicio 12
============

OBJETIVO: Programa que le pide al usuario un número (0-1000) y calcula todos los divisores menores de este mismo número, mostrándolos en pantalla.

OBSERVACIÓN: Sabiendo que un número primo sólo es divisible por sí mismo y por 1, esto me dará una pista para crear el condicional del final del programa.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 22-oct-2014

*/

var

			  tope : numerico   // Número introducido por el usuario.
				  i : numerico   // Variable de control para las iteraciones del bucle.
	  divisibles : numerico   // Contador para conocer el número de divisibles en el número.
	noDivisibles : numerico   // Contador para conocer el número de no divisibles en el número.

inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA LA CANTIDAD DE DIVISORES Y NO DIVISORES DE UN NÚMERO\n")

	repetir
		imprimir("\nIntroduce un número del 0 al 1000 para conocer sus divisibles: ")
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

	imprimir("\nEn total, ", tope," tiene ", divisibles, " números divisibles y ", noDivisibles, " números no divisibles." )

	si (divisibles == 2) {
		imprimir("\n", tope, " es un número primo.")
	sino
		imprimir("\n", tope, " NO es un número primo.")
	}


fin