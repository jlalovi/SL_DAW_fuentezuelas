/*

Ejercicio 10
============

OBJETIVO: Programa que le pide al usuario un n�mero (0-1000) y calcula todos los divisores menores de este mismo n�mero, mostr�ndolos en pantalla.

OBSERVACI�N: Introduzco una variable extra que no pide el programa 'divisibles', que me servir� para introducir un ejercicio posterior.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 22-oct-2014

*/

var

			tope : numerico   // N�mero introducido por el usuario.
			   i : numerico   // Variable de control para las iteraciones del bucle.
	divisibles : numerico   // Contador para conocer el n�mero de divisibles en el n�mero (esto me servir� para otro ejercicio).




inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA LOS DIVISISBLES AL N�MERO INTRODUCIDO\n")

	repetir
		imprimir("\nIntroduce un n�mero del 0 al 1000 para conocer sus divisibles: ")
		leer (tope)
	hasta (tope>=0 and tope<=1000)

	divisibles = 1   // Al poner en el bucle un l�mite del tope/2, cuento el 'tope', ya que un n�mero es divisible por s� mismo.

	imprimir("\n\nLos n�meros divisibles de ", tope, " son:\n")
	desde i = 1 hasta tope/2 {   // Nin�n n�mero divisible por otro ser� mayor a la mitad de �ste.
		si (tope%i==0) {
			divisibles = divisibles + 1
			imprimir (i, " ")
		}
	}

	imprimir (tope) // Cuento el �ltimo divisor que no pasa por el bucle, para imprimirlo en pantalla (recordar bucle hasta tope/2)
	imprimir("\n\nEn total, ", tope," tiene ", divisibles, " n�meros divisibles.")


fin