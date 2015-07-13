/*

Ejercicio 10
============

OBJETIVO: Crear un programa en el que se introduce un n�mero entero y se crea una pir�mide de asteriscos con ese n�mero de filas.

OBSERVACION: - Para leer y entender m�s f�cilmente los bucles con condicionales, llamo a las variables
				   de iteraci�n 'f' de fila y 'c' de columna.
				 - Para que el tri�ngulo sea m�s regular, el tope de columnas lo multiplico por 2 (2 tri�ngulos rect�ngulos).
				 - Obligo al usuario a introducir un tope entre 2 y 20 en un bucle, por cuestiones de espacio y coherencia.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 30-oct-2014

*/

var

	f, c : numerico            // Variables de control para las iteraciones 'f' (fila) y 'c' (columna).
	tope : numerico            // Altura en asteriscos del tri�ngulo.

inicio

	cls()

	imprimir ("PROGRAMA QUE PINTA UN TRI�NGULO DE 'X' ASTERISCOS DE ALTURA")

	repetir
		imprimir ("\n\nIntroduce el n�mero de asteriscos para la altura (entre 2 y 20): ")
		leer(tope)
	hasta (tope>=2 and tope<=20)

	imprimir("\n")
	
	desde f=1 hasta tope {
		si (f==1) {
			desde c=1 hasta tope*2 {         // Para que el tri�ngulo sea equil�tero (y no rect�ngulo), el tope debe ser el doble de 'c' que de 'f'. 
				si (c==tope) {
					imprimir("*")              // En la primera fila, s�lo imprimir� una columna de aster�scos, justo en la posici�n que marca el tope.
				sino
					imprimir(" ")
				}
			}
		sino
			desde c=1 hasta tope*2 {
				si (c>tope-f and c<tope+f) {  // En este caso creo asteriscos en todas las 'c' que comprendan entre las posiciones tope-f y tope+f.
					imprimir("*")
				sino
					imprimir(" ")
				}
			}		
		}
		imprimir("\n")                      // El salto de l�nea lo realizo al final de cada iteraci�n 'f' (fila)
	}

fin