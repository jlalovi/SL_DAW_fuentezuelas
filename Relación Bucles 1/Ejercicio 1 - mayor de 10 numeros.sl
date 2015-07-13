/*

Ejercicio 1
===========

OBJETIVO: Programa que pide 10 n�meros al usuario y calcula el valor m�ximo de entre ellos.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 18-oct-2014

*/

const

	tope : 10          // Variable en la que almaceno cu�ntos n�meros quiero que pasen por el bucle, si el incremento es de 1.	

var

	    n : numerico   // N�mero introducido por el usuario.
	    i : numerico   // Variable de control para las iteraciones del bucle.
	mayor : numerico   // Variable para almacenar el n�mero mayor de todos los introducidos



inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA EL MAYOR DE 10 N�MEROS\n\n")

	desde i = 1 hasta tope paso 1 {   // Aqu� no es necesario escribir la sentencia 'paso', ya que por defecto es 1.
		imprimir("\nIntroduce el valor del n�mero ", i, ": ")
		leer(n)
		si (i == 1) {                  // En la primera iteraci�n, almaceno el valor de n en mayor.
			mayor = n
		}
		si (n > mayor) {               // En cada una de las iteraciones compruebo que el n�mero es mayor que el almacenado. Si es as�, almaceno el nuevo n�mero.
			mayor = n
		}
	}
	
	imprimir("\nEl n�mero mayor es el: ", mayor)


fin