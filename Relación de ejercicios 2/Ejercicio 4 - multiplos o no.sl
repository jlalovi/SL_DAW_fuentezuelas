/*

Ejercicio 4
===========

OBJETIVO:  Pedir dos números y decir si uno es múltiplo del otro.

OBSERVACIÓN: El programa considera n1 = 0 como no múltiplo del primero para evitar el error por indeterminación al realizar el MOD.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 29-sep-2014

*/

var

	n1, n2 : numerico

inicio

	cls ()

	imprimir ("PROGRAMA PARA SABER EL SEGUNDO VALOR ES MÚLTIPLO DEL PRIMERO:")

	imprimir ("\n\nIntroduce primer valor: ")
	leer (n1)
	si (n1 == 0) {
		imprimir ("\nPor favor, n1 no puede ser igual a 0. Introduce otro número: ")
		leer (n1)
	}

	imprimir ("\nIntroduce el segundo valor: ")
	leer (n2)


	si ((n2%n1 == 0) and (n2 <> 0)) {
		imprimir ("\n", n2, " es múltiplo de ", n1, " ya que ", n1, " * ", n2/n1, " = ", n2)
	sino
		imprimir ("\n", n2, " no es múltiplo de ", n1)
	}

fin