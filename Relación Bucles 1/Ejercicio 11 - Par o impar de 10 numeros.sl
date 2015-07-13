/*

Ejercicio 11
============

OBJETIVO: Programa que le pide al usuario un n�mero y calcula todos los divisores menores de este mismo n�mero, mostr�ndolos en pantalla.

OBSERVACI�N: El programa considera el valor 0 como especial, pero no est� preparado para recibir un car�cter no num�rico.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 22-oct-2014

*/

const

	tope : 10

var

	i : numerico   // Variable de control para las iteraciones del bucle.
	n : numerico   // Valores introducidos por usuario en el bucle.

inicio

	cls()

	imprimir ("PROGRAMA QUE VA DICIENDO SI EL N�MERO ES PAR O IMPAR DE 10 N�MEROS")

	desde i = 1 hasta tope {
		imprimir ("\n\nIntroduce el valor del n�mero ", i, ": ")
		leer(n)
		si (n == 0) {
			imprimir (" El n�mero introducido no es par ni impar.")
		sino si (n%2==0)
			imprimir (" El n�mero introducido es par.")
		sino
			imprimir (" El n�mero introducido es impar.")
		}
	}

fin