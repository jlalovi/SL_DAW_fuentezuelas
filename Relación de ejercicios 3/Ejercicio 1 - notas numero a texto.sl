/*

Ejercicio 1
===========

OBJETIVO:  Pedir una nota numérica entera entre 0 y 10, y mostrar dicha nota de la forma: cero, uno, dos, tres.

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
		caso (notaNum == 0)
			notaCad = "cero"
		caso (notaNum == 1)
			notaCad = "uni"
		caso (notaNum == 2)
			notaCad = "dos"
		caso (notaNum == 3)
			notaCad = "tres"
		caso (notaNum == 4)
			notaCad = "cuatro"
		caso (notaNum == 5)
			notaCad = "cinco"
		caso (notaNum == 6)
			notaCad = "seis"
		caso (notaNum == 7)
			notaCad = "siete"
		caso (notaNum == 8)
			notaCad = "ocho"
		caso (notaNum == 9)
			notaCad = "nueve"
		caso (notaNum == 10)
			notaCad = "diez"
	}

	imprimir ("\nEl valor introducido es ", notaCad, ".")

fin
