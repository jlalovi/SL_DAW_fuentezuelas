/*

Ejercicio 1
===========

OBJETIVO: Programa que pide un numero al usuario y calcula la suma de los números pares entre 0 y ese numero.

OBSERVACIÓN: He creado dos métodos para resolver el programa, el segundo 'Método de parejas', es el más eficiente.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 28-oct-2014

*/

var

	     tope : numerico       // Número tope hasta donde quiero sumar pares.
	   	  i : numerico       // Variable de control para las iteraciones del bucle.
	sumatorio : numerico 	   // Variable para almacenar el sumatorio de los pares hasta tope.
		

inicio

	cls()

	imprimir ("PROGRAMA QUE SUMA LOS NÚMEROS PARES HASTA EL TOPE INTRODUCIDO POR EL USUARIO")

	imprimir ("\n\nIntroduce el tope de números pares que quieres sumar desde 0: ")
	leer(tope)

	desde i=2 hasta tope paso 2 { // Empiezo con i = 2 porque el 0 y el 1 no son pares. Evidentemente utilizo paso 2 para contar sólo los números pares.
		sumatorio = sumatorio + i
	}

	imprimir("\nLa suma de todos los pares desde 0 hasta ", tope, " es ", sumatorio)

fin