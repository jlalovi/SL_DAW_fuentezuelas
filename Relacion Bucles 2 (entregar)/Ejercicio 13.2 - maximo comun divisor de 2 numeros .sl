/*

Ejercicio 13
============

OBJETIVO: Calcular el m�ximo com�n divisor de dos n�meros.

OBSERVACION: - Obligo al usuario introducir n�meros entre 1 y 1000

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 01-nov-2014

*/

var

       n1, n2 : numerico             // Variables con valores introducidos por el usuario. Estos dos n�meros ser�n de los que se realizar� la operaci�n m�ximo com�n divisor.

inicio

	cls()

	imprimir ("PROGRAMA QUE CALCULA EL M�XIMO COM�N DIVISOR DE DOS N�MEROS")

	repetir
		imprimir("\n\nIntroduce el primer n�mero (entre 1 y 1000): ")
		leer (n1)
	hasta (n1>=1 and n1<=1000)

	repetir
		imprimir("\nIntroduce el segundo n�mero (entre 1 y 1000): ")
		leer (n2)
	hasta (n2>=1 and n2<=1000)

	mientras (n1<>n2) {     // Bucle que repetir� las iteraciones hasta que n1=n2
		si (n1>n2) {
			n1 = n1 - n2
		sino
			n2 = n2 - n1
		}
	}

	imprimir("\nEl mcd de los n�meros introducidos es ", n1)

fin