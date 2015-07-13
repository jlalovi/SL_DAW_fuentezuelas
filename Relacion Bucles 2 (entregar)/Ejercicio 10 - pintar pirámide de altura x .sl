/*

Ejercicio 10
============

OBJETIVO: Crear un programa en el que se introduce un número entero y se crea una pirámide de asteriscos con ese número de filas.

OBSERVACION: - Para leer y entender más fácilmente los bucles con condicionales, llamo a las variables
				   de iteración 'f' de fila y 'c' de columna.
				 - Para que el triángulo sea más regular, el tope de columnas lo multiplico por 2 (2 triángulos rectángulos).
				 - Obligo al usuario a introducir un tope entre 2 y 20 en un bucle, por cuestiones de espacio y coherencia.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 30-oct-2014

*/

var

	f, c : numerico            // Variables de control para las iteraciones 'f' (fila) y 'c' (columna).
	tope : numerico            // Altura en asteriscos del triángulo.

inicio

	cls()

	imprimir ("PROGRAMA QUE PINTA UN TRIÁNGULO DE 'X' ASTERISCOS DE ALTURA")

	repetir
		imprimir ("\n\nIntroduce el número de asteriscos para la altura (entre 2 y 20): ")
		leer(tope)
	hasta (tope>=2 and tope<=20)

	imprimir("\n")
	
	desde f=1 hasta tope {
		si (f==1) {
			desde c=1 hasta tope*2 {         // Para que el triángulo sea equilátero (y no rectángulo), el tope debe ser el doble de 'c' que de 'f'. 
				si (c==tope) {
					imprimir("*")              // En la primera fila, sólo imprimiré una columna de asteríscos, justo en la posición que marca el tope.
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
		imprimir("\n")                      // El salto de línea lo realizo al final de cada iteración 'f' (fila)
	}

fin