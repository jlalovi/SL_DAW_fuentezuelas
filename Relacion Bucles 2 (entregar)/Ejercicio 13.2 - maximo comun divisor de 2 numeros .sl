/*

Ejercicio 13
============

OBJETIVO: Calcular el máximo común divisor de dos números.

OBSERVACION: - Obligo al usuario introducir números entre 1 y 1000

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 01-nov-2014

*/

var

       n1, n2 : numerico             // Variables con valores introducidos por el usuario. Estos dos números serán de los que se realizará la operación máximo común divisor.

inicio

	cls()

	imprimir ("PROGRAMA QUE CALCULA EL MÁXIMO COMÚN DIVISOR DE DOS NÚMEROS")

	repetir
		imprimir("\n\nIntroduce el primer número (entre 1 y 1000): ")
		leer (n1)
	hasta (n1>=1 and n1<=1000)

	repetir
		imprimir("\nIntroduce el segundo número (entre 1 y 1000): ")
		leer (n2)
	hasta (n2>=1 and n2<=1000)

	mientras (n1<>n2) {     // Bucle que repetirá las iteraciones hasta que n1=n2
		si (n1>n2) {
			n1 = n1 - n2
		sino
			n2 = n2 - n1
		}
	}

	imprimir("\nEl mcd de los números introducidos es ", n1)

fin