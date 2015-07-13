/*

Ejercicio 2
===========

OBJETIVO: Pedir una nota de 0 a 10 y mostrarla de la forma: Insuficiente, Suficiente, Bien...

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 06-oct-2014

*/

var

	notaNum : numerico
	notaCad : cadena

inicio

	cls ()

	imprimir ("PROGRAMA PARA SABER MOSTRAR NOTA EN FORMA DE TEXTO:")

	imprimir ("\n\nIntroduce un valor entre 0 y 10: ")
	leer (notaNum)

	mientras ((notaNum < 0) or (notaNum > 10)) {
		imprimir ("\n\nPor favor, introduce un valor entre 0 y 10: ")
		leer (notaNum)
	}

	eval {
		caso (notaNum >= 0  and notaNum < 5)
			notaCad = "Insuficiente"
		caso (notaNum >= 5  and notaNum < 6)
			notaCad = "Suficiente"
		caso (notaNum >= 6  and notaNum < 7)
			notaCad = "Bien"
		caso (notaNum >= 7  and notaNum < 8)
			notaCad = "Notable"
		caso (notaNum >= 8  and notaNum < 10)
			notaCad = "Sobresaliente"
		caso (notaNum == 10)
			notaCad = "Matricula de Honor"
	}

	imprimir ("\nLa nota obtenida es: ", notaCad, ".")

fin
