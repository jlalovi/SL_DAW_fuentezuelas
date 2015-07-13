/*

Ejercicio 1
===========

OBJETIVO: Programa que pide un numero al usuario y calcula la suma de los n�meros pares entre 0 y ese numero.

OBSERVACI�N: He creado dos m�todos para resolver el programa, el segundo 'M�todo de parejas', es el m�s eficiente.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 28-oct-2014

*/

var

	     tope : numerico       // N�mero tope hasta donde quiero sumar pares.
	   	  i : numerico       // Variable de control para las iteraciones del bucle.
	sumatorio : numerico 	   // Variable para almacenar el sumatorio de los pares hasta tope.
		

inicio

	cls()

	imprimir ("PROGRAMA QUE SUMA LOS N�MEROS PARES HASTA EL TOPE INTRODUCIDO POR EL USUARIO")

	imprimir ("\n\nIntroduce el tope de n�meros pares que quieres sumar desde 0: ")
	leer(tope)

	desde i=2 hasta tope paso 2 { // Empiezo con i = 2 porque el 0 y el 1 no son pares. Evidentemente utilizo paso 2 para contar s�lo los n�meros pares.
		sumatorio = sumatorio + i
	}

	imprimir("\nLa suma de todos los pares desde 0 hasta ", tope, " es ", sumatorio)

fin