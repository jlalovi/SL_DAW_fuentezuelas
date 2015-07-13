/*

Ejercicio X
===========

OBJETIVO: Programa que pregunta de 0 a 100 números a decidir por el usuario, y mostrarlos de manera ordenada.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 18-oct-2014

*/

var

	  tope : numerico               // 'N' números a ordenar introducidos por el usuario.
		  i : numerico               // Primera variable de control para las iteraciones del bucle.
		  j : numerico               // Segunda variable de control para las iteraciones del bucle.
	 valor : vector [100] numerico  // Variable para almacenar el número mayor de todos los introducidos.
		aux : numerico               // Variable auxiliar para hacer intercambios de valores.
		

inicio

	cls()

	imprimir ("PROGRAMA QUE ORDENA DE MENOR A MAYOR 'X' NUMEROS INDICADOS POR USUARIO Y LOS ORDENA")

	repetir
		imprimir ("\n\nIntroduce cuántos números deseas ordenar (entre 0 y 100): ")
		leer(tope)
	hasta (tope>=0 and tope<=100)

	desde i=1 hasta tope paso 1 {
		imprimir("\nIntroduce el valor del número ", i, " :")
		leer(valor[i])
	}

	desde i=2 hasta tope paso 1 {
		desde j=1 hasta i {
			si (valor[i]<valor[j]) {
				aux = valor[i]
				valor[i] = valor[j]
				valor[j] = aux
			}
		}
	}
	
	imprimir("\nLos números ordenados de menor a mayor son:")
	desde i=1 hasta tope paso 1 {
		imprimir(" ", valor[i])
	}


fin