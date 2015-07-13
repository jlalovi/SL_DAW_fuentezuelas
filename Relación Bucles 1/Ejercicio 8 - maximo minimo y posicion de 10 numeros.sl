/*

Ejercicio 8
===========

OBJETIVO: Programa que te pide un conjunto de 10 números diferentes y te dice cuál es el valor máximo, el mínimo y en qué posición está cada uno.

OBSERVACIÓN: Si la posición se repite, el programa muestra la primera posición en la que se han encontrado el número menor y mayor.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 18-oct-2014

*/

const

	tope : 10          // Variable en la que almaceno cuántos números quiero que pasen por el bucle, si el incremento es de 1.	

var

	             n : numerico   // Número introducido por el usuario.
	             i : numerico   // Variable de control para las iteraciones del bucle.
	  mayor, menor : numerico   // Variables para almacenar el número mayor y el menor de todos los introducidos.
	posicion_mayor, 
	posicion_menor : numerico   // Variables para almacenar la posición de los números mayor y menor.



inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA EL MAYOR Y EL MENOR DE 10 NÚMEROS Y SU POSICIÓN\n")

	desde i = 1 hasta tope {
		imprimir("\nIntroduce el valor del número ", i, ": ")
		leer(n)
		si (i == 1) {                  // En la primera iteración, almaceno el valor de n en mayor y menor.
			mayor = n
			menor = n
			posicion_mayor = i          // También almaceno en posición mayor y menor la primera iteración, para que ambas empiecen con el valor de 1 asignado por defecto.
			posicion_menor = i
		}
		si (n > mayor) {               // En cada una de las iteraciones compruebo que el número es mayor o menor que el almacenado. Si es así, almaceno el nuevo número.
			mayor = n
		   posicion_mayor = i          // Si el número es mayor o menor, almaceno la posición a través del valor de la iteración 'i' que se está realizando en el bucle.
		sino si (n < menor)
			menor = n
			posicion_menor = i
		}
	}
	
	imprimir("\nEl número mayor es el: ", mayor, " y su posición es la: ", posicion_mayor)
	imprimir("\nEl número menor es el: ", menor, " y su posición es la: ", posicion_menor)


fin