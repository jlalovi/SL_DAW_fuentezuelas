/*

Ejercicio 8
===========

OBJETIVO:  Pedir tres números y mostrarlos ordenados de mayor a menor.

OBSERVACIÓN: Los números iguales los omito añadiendo el valor '>=' en los condicionales.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 29-sep-2014

*/

var

	n1, n2, n3 : numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA ORDENAR DE MAYOR A MENOR:")

	imprimir ("\n\nIntroduce primer valor: ")
	leer (n1)

	imprimir ("\nIntroduce el segundo valor: ")
	leer (n2)

	imprimir ("\nIntroduce el tercer valor: ")
	leer (n3)

	si (n1 >= n2) {
		si (n1 >= n3 ) {
			si (n2 >= n3) {
				imprimir ("\n Los números ordenados de mayor a menor son: ", n1, ", ", n2, " y ", n3)
			sino
				imprimir ("\n Los números ordenados de mayor a menor son: ", n1, ", ", n3, " y ", n2)
			}
		sino
			imprimir ("\n Los números ordenados de mayor a menor son: ", n3, ", ", n1, " y ", n2)
		}
	sino
		si (n2>=n3) {
			si (n1>=n3) {
				imprimir ("\n Los números ordenados de mayor a menor son: ", n2, ", ", n1, " y ", n3)
			sino
				imprimir ("\n Los números ordenados de mayor a menor son: ", n2, ", ", n3, " y ", n1)
			}
		sino
			imprimir ("\n Los números ordenados de mayor a menor son: ", n3, ", ", n2, " y ", n1)
		}
	}

fin