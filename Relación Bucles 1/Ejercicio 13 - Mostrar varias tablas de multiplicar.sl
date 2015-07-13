/*

Ejercicio 13
============

OBJETIVO: Programa que imprime la tabla de multiplicar (hasta el 10) de un número introducido por un usuario.

OBSERVACIONES: - Permito introducir tablas de multiplicar del 0 al 50, para evitar mostrar por pantalla una gran cantidad de tablas.
					- Obligo al usuario a introducir un valor para 'tabla2' superior o igual al de 'tabla1'.
					- Para mostrar una a una las tablas del intervalo, introduzco pausas "pulsa intro para continuar".

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 22-oct-2014

*/

const

	     tope : 10         // Variable constante para número de multiplicaciones a mostrar.

var
 
			    i, j : numerico   // Variables de control para las iteraciones de los bucles.
	tabla1, tabla2 : numerico   // Valores introducidos por el usuario entre el 0 y el 100. Se imprimirán también las tablas de multiplicar que estén entre esos dos valores.
	     continuar : cadena     // Variable para mostrar por pasos en pantalla

inicio

	cls()

	imprimir ("PROGRAMA QUE MUESTRA LA TABLA DE MULTIPLICAR ELEGIDA POR EL USUARIO")

	repetir
		imprimir ("\n\nIntroduce el valor de la primera tabla (entre 0 y 50): ")
		leer(tabla1)
	hasta (tabla1>=0 and tabla1<=50)

	repetir
		imprimir ("\n\nIntroduce el valor de la segunda tabla (entre ", tabla1," y 50): ")
		leer(tabla2)
	hasta (tabla2>=tabla1 and tabla2<=50)

	desde j = tabla1 hasta tabla2 {
		imprimir("\n\nTABLA DEL ", j, ":\n")
		desde i=0 hasta tope {
			imprimir("\n", j, " x ", i, " = ", i*j, "\n")
		}
		imprimir("\n- Presiona enter para continuar -")          //  Pausa en la ejecución del programa
		leer(continuar)
	}


fin