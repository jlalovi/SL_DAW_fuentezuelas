/*

Ejercicio 2
===========

OBJETIVO: Pedir un n�mero entre 0 y 9.999 y decir cu�ntas cifras tiene. 

OBSERVACIONES: - Damos por hecho que el usuario introduce uno de esos n�meros.
				   - En este programa incluyo los valores negativos, por lo que el ejercicio
					  acepta valores enteros entre -9999 y 9999.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 09-oct-2014

*/

var

	x: numerico        // Valor a introducir por el usuario.
	nCifras: numerico  // Aqu� almacenar� el n�mero de cifras del n�mero introducido por el usuario.

inicio

	cls()

	imprimir ("PROGRAMA PARA MOSTRAR N�MERO DE CIFRAS:")
         
	imprimir ("\n\nIntroduce un valor num�rico entre 0 y 9999 ")
	leer(x)

	x = (x^2)^(1/2)                    // Introduzco esta condici�n para incluir n�meros enteros negativos.

	si (x < 10) {
		nCifras = 1
	sino si (x >= 1000)
		nCifras = 4
	sino si (x >= 100)
		nCifras = 3
	sino si (x >= 10)
		nCifras = 2
	}

	si (x < 10) {
		imprimir ("\n\n",x ," tiene ", nCifras, " cifra.")
	sino
		imprimir ("\n\n",x ," tiene ", nCifras, " cifras.")
	}

fin
