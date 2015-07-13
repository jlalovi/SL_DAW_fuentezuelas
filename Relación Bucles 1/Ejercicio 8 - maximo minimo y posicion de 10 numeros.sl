/*

Ejercicio 8
===========

OBJETIVO: Programa que te pide un conjunto de 10 n�meros diferentes y te dice cu�l es el valor m�ximo, el m�nimo y en qu� posici�n est� cada uno.

OBSERVACI�N: Si la posici�n se repite, el programa muestra la primera posici�n en la que se han encontrado el n�mero menor y mayor.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 18-oct-2014

*/

const

	tope : 10          // Variable en la que almaceno cu�ntos n�meros quiero que pasen por el bucle, si el incremento es de 1.	

var

	             n : numerico   // N�mero introducido por el usuario.
	             i : numerico   // Variable de control para las iteraciones del bucle.
	  mayor, menor : numerico   // Variables para almacenar el n�mero mayor y el menor de todos los introducidos.
	posicion_mayor, 
	posicion_menor : numerico   // Variables para almacenar la posici�n de los n�meros mayor y menor.



inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA EL MAYOR Y EL MENOR DE 10 N�MEROS Y SU POSICI�N\n")

	desde i = 1 hasta tope {
		imprimir("\nIntroduce el valor del n�mero ", i, ": ")
		leer(n)
		si (i == 1) {                  // En la primera iteraci�n, almaceno el valor de n en mayor y menor.
			mayor = n
			menor = n
			posicion_mayor = i          // Tambi�n almaceno en posici�n mayor y menor la primera iteraci�n, para que ambas empiecen con el valor de 1 asignado por defecto.
			posicion_menor = i
		}
		si (n > mayor) {               // En cada una de las iteraciones compruebo que el n�mero es mayor o menor que el almacenado. Si es as�, almaceno el nuevo n�mero.
			mayor = n
		   posicion_mayor = i          // Si el n�mero es mayor o menor, almaceno la posici�n a trav�s del valor de la iteraci�n 'i' que se est� realizando en el bucle.
		sino si (n < menor)
			menor = n
			posicion_menor = i
		}
	}
	
	imprimir("\nEl n�mero mayor es el: ", mayor, " y su posici�n es la: ", posicion_mayor)
	imprimir("\nEl n�mero menor es el: ", menor, " y su posici�n es la: ", posicion_menor)


fin