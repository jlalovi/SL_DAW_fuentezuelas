/*

Ejercicio 11
============

OBJETIVO: Programa que le pide al usuario un número y calcula todos los divisores menores de este mismo número, mostrándolos en pantalla.

OBSERVACIÓN: El programa considera el valor 0 como especial, pero no está preparado para recibir un carácter no numérico.

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

	imprimir ("PROGRAMA QUE VA DICIENDO SI EL NÚMERO ES PAR O IMPAR DE 10 NÚMEROS")

	desde i = 1 hasta tope {
		imprimir ("\n\nIntroduce el valor del número ", i, ": ")
		leer(n)
		si (n == 0) {
			imprimir (" El número introducido no es par ni impar.")
		sino si (n%2==0)
			imprimir (" El número introducido es par.")
		sino
			imprimir (" El número introducido es impar.")
		}
	}

fin