/*

Ejercicio 9
===========

OBJETIVO: Crear un programa que lea un número entero y a partir de él pinte en pantalla un cuadrado de asteriscos con
          ese tamaño. Los asteriscos sólo se verán en el borde del cuadrado, no en el interior.

OBSERVACION: - Para leer y entender más fácilmente los bucles con condicionales, llamo a las variables
				   de iteración 'f' de fila y 'c' de columna. Asimismo, se entiende que el primer bucle
			      hace referencia a cada una de las filas, y los condicionales que hay dentro, hacen referencia
				   a la primera y última fila, que rellenan todos los espacios con '*' y el resto con '*' sólo
			      en la primera y última columna.
				 - Para que el cuadrado sea más regular, he añadido un espacio a las columnas, ya que entre las filas hay
				   más espacio que entre las columnas por defecto.
				 - Obligo al usuario a introducir un tope entre 2 y 20 en un bucle, por cuestiones de espacio y coherencia.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 30-oct-2014

*/

var

	f, c : numerico            // Variables de control para las iteraciones 'f' (fila) y 'c' (columna).
	tope : numerico            // Número de asteriscos por lado en el cuadrado.
		

inicio

	cls()

	imprimir ("PROGRAMA QUE PINTA UN CUADRADO DE UN NÚMERO DE ASTERISCOS DE LADO")

	repetir
		imprimir ("\n\nIntroduce el número de asteriscos por lado (entre 2 y 20): ")
		leer(tope)
	hasta (tope>=2 and tope<=20)

	imprimir("\n")
	
	desde f=1 hasta tope {
		si (f==1 or f==tope) {         // Si estamos en la 1ª o última fila,
			desde c=1 hasta tope {      // imprimo '*' en todas las columnas de esa fila.
				imprimir("* ")
			}
		sino
			desde c=1 hasta tope {      // Si la fila NO es la 1ª o última,
				si (c==1 or c==tope) {   // imprimo '*' sólo en la 1ª y última columna de esa fila.
					imprimir("* ")
				sino
					imprimir("  ")        // Las columnas vacias las relleno con un espacio en blanco.
				}
			}		
		}
		imprimir("\n")                 // El salto de línea lo realizo al final de cada iteración 'f' (fila)
	}

fin