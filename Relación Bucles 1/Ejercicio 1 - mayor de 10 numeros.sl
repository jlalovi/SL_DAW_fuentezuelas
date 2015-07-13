/*

Ejercicio 1
===========

OBJETIVO: Programa que pide 10 números al usuario y calcula el valor máximo de entre ellos.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 18-oct-2014

*/

const

	tope : 10          // Variable en la que almaceno cuántos números quiero que pasen por el bucle, si el incremento es de 1.	

var

	    n : numerico   // Número introducido por el usuario.
	    i : numerico   // Variable de control para las iteraciones del bucle.
	mayor : numerico   // Variable para almacenar el número mayor de todos los introducidos



inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA EL MAYOR DE 10 NÚMEROS\n\n")

	desde i = 1 hasta tope paso 1 {   // Aquí no es necesario escribir la sentencia 'paso', ya que por defecto es 1.
		imprimir("\nIntroduce el valor del número ", i, ": ")
		leer(n)
		si (i == 1) {                  // En la primera iteración, almaceno el valor de n en mayor.
			mayor = n
		}
		si (n > mayor) {               // En cada una de las iteraciones compruebo que el número es mayor que el almacenado. Si es así, almaceno el nuevo número.
			mayor = n
		}
	}
	
	imprimir("\nEl número mayor es el: ", mayor)


fin