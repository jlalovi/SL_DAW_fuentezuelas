/*

Ejercicio 9
===========

OBJETIVO: Programa que te calcula la potencia de un número introduciendo el número base y el exponente (con bucle).

OBSERVACIÓN: Cuento con que el usuario introducirá valores numéricos apropiados (Números Naturales).

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 21-oct-2014

*/



var
 
	      b,e : numerico   // Base y Exponente introducidos por el usuario.
	        i : numerico   // Variable de control para las iteraciones del bucle.
	resultado : numerico   // Variable donde almaceno el resultado total.



inicio

	cls()

	imprimir ("PROGRAMA QUE REALIZA LA POTENCIA A PARTIR DE LA BASE Y EL EXPONENTE\n")

	imprimir("\nIntroduce el valor de la base: ")
	leer(b)

	imprimir("\nIntroduce el valor del exponente: ")
	leer(e)

	resultado = 1    // Defino resultado con valor 1 para que la primera iteración sea la base elevado a 1 (resultado = 1 * b)

	desde i = 1 hasta e {
		resultado = resultado * b 
	}
	
	imprimir("\nLa potencia de ", b, "^", e," = ", resultado)


fin