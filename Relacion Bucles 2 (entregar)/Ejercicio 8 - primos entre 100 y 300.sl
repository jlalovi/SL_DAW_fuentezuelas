/*

Ejercicio 8
===========

OBJETIVO: Programa que te dice cuales son los números primos existentes entre 100 y 300 (incluidos)

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 30-oct-2014

*/

var

	i, j, contador : numerico    // Variables de control para las iteraciones.

inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA LOS NÚMEROS PRIMOS ENTRE 100 Y 300")


	imprimir("\n\nLos números primos entre 100 y 300 son:\n")
	desde i=100 hasta 300 {
		contador = 0                    // Reinicio 'contador' a 0.
		j = 1                           // Reinicio 'j' a 1, para que en el bucle repetir empiece j=2, y así saltarse el i%1, que siempre va a ser 0.
		repetir  
			j = j + 1                    // 'j' empieza siendo siembre 2 en este bucle.
			si (i%j==0) {
				contador = contador + 1
			}
		hasta (contador>0 or j>i/2)     // Salgo del bucle en cuanto haya algún número divisible que no sea el 1 o el mismo número. No cuento la segunda mitad del los números,
		si (contador == 0) {            // ya que los números divisibles de un número, nunca van a ser superiores a su mitad, salvo sí mismo, que como he dicho, no lo cuento,
			imprimir(i," ")              // y por eso lo imprimo como primo si 'contador' es 0.
		}
	}	


fin