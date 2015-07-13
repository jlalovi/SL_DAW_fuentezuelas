/*

Ejercicio 10
============

OBJETIVO: Programa que le pide al usuario un número (0-1000) y calcula todos los divisores menores de este mismo número, mostrándolos en pantalla.

OBSERVACIÓN: Introduzco una variable extra que no pide el programa 'divisibles', que me servirá para introducir un ejercicio posterior.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 22-oct-2014

*/

var

			tope : numerico   // Número introducido por el usuario.
			   i : numerico   // Variable de control para las iteraciones del bucle.
	divisibles : numerico   // Contador para conocer el número de divisibles en el número (esto me servirá para otro ejercicio).




inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA LOS DIVISISBLES AL NÚMERO INTRODUCIDO\n")

	repetir
		imprimir("\nIntroduce un número del 0 al 1000 para conocer sus divisibles: ")
		leer (tope)
	hasta (tope>=0 and tope<=1000)

	divisibles = 1   // Al poner en el bucle un límite del tope/2, cuento el 'tope', ya que un número es divisible por sí mismo.

	imprimir("\n\nLos números divisibles de ", tope, " son:\n")
	desde i = 1 hasta tope/2 {   // Ninún número divisible por otro será mayor a la mitad de éste.
		si (tope%i==0) {
			divisibles = divisibles + 1
			imprimir (i, " ")
		}
	}

	imprimir (tope) // Cuento el último divisor que no pasa por el bucle, para imprimirlo en pantalla (recordar bucle hasta tope/2)
	imprimir("\n\nEn total, ", tope," tiene ", divisibles, " números divisibles.")


fin