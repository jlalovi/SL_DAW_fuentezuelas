/*

Ejercicio 9
===========

OBJETIVO:  Pedir x números y mostrarlos ordenados de mayor a menor.

OBSERVACIÓN: Los números iguales los omito añadiendo el valor '>=' en los condicionales.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 29-sep-2014

*/

var

	valoresIntroducidos, valoresMayorMenor : vector [*] numerico
	i, j: numerico
	cambio, aux: numerico
	nValores : numerico


inicio

	cls ()

	imprimir ("PROGRAMA PARA ORDENAR DE MAYOR A MENOR:")

	imprimir ("\n\nIntroduce el número de valores a comparar (máximo 99): ")
	leer (nValores)
	dim(valoresIntroducidos, nValores)   // Función para indicar que el tamaño del vector 'valores' va a ser igual a 'nValores'

	desde i=1 hasta nValores {
		imprimir ("Introduce el valor ", i, ": ")
		leer (valoresIntroducidos[i])
	}

	cambio = 1                               // Para iniciar el siguiente bucle
	valoresMayorMenor = valoresIntroducidos  // Creo un backup del orden de los números introducidos.

	mientras cambio = 1 {
		desde i=1 hasta (nValores - 1){
			si (valoresMayorMenor[i] < valoresMayorMenor[i+1]) {
				aux = valoresMayorMenor[i+1]
				valoresMayorMenor[i+1] = valoresMayorMenor[i]
				valoresMayorMenor[i] = aux
			}
			sino
				cambio = 0
		}
	imprimir (valoresIntroducidos)
	imprimir (valoresMayorMenor)

fin