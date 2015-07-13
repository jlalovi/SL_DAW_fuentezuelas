/*

Ejercicio 3
===========

OBJETIVO: Programa capaz de ordenar un número de cadenas previamente introducidos por teclado. Pide al usuario cuantas 
			 cadenas se desean ordenar, después solicita la introducción de dichass cadenas y finalmente los muestra ordenados 
			 alfabéticamente.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 28-oct-2014

*/

var

	     tope : numerico               // 'N' cadenas a ordenar introducidos por el usuario.
		     i : numerico               // Variable de control para las iteraciones del bucle.
	contenido : vector [100] cadena    // Variable para almacenar el número mayor de todos los introducidos.
		   aux : cadena                 // Variable auxiliar para hacer intercambios de valores.
	   salida : logico         		  // Variable para segundo método. Sale del bucle 'repetir', sino hay cambios.    
		

inicio

	cls()

	imprimir ("PROGRAMA QUE ORDENA DE MENOR A MAYOR 'X' CADENAS INDICADAS POR USUARIO Y LAS ORDENA")

	repetir
		imprimir ("\n\nIntroduce cuántas cadenas deseas ordenar (entre 1 y 100): ")
		leer(tope)
	hasta (tope>=1 and tope<=100)

	desde i=1 hasta tope paso 1 {
		imprimir("\nIntroduce el valor de la cadena ", i, " :")
		leer(contenido[i])
	}

	repetir
		salida = SI                   // Empiezo 'salida' con un valor SI, para salir del bucle 'repetir' si el bucle 'desde' no sufre ningún cambio en el condicional.
		desde i=1 hasta tope-1 {      // Por que en el bucle estoy comparando parejas ('i' e 'i+1')
			si (contenido[i]>contenido[i+1]) {
				aux = contenido[i]
				contenido[i] = contenido[i+1]
				contenido[i+1] = aux
				salida = NO             // En la primera pasada, se comprueban todos los pares. Si existe un cambio dentro del condicional, 
			}									// el valor de 'salida' será NO, por lo que al salir del bucle 'desde' se iniciará de nuevo el bucle 'repetir'.
		}
	hasta (salida)
	
	imprimir("\nLas cadenas ordenadas de menor a mayor son:")
	desde i=1 hasta tope paso 1 {
		imprimir(" ", contenido[i])
	}


fin