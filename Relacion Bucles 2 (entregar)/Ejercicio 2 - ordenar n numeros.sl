/*

Ejercicio 2
===========

OBJETIVO: Programa capaz de ordenar n�meros previamente introducidos por teclado. Pide al usuario cuantos n�mero 
			 se desean ordenar, despu�s solicita la introducci�n de dichos n�meros y finalmente los muestra ordenados 
			 de menor a mayor.

OBSERVACI�N: He creado dos m�todos para resolver el programa, el segundo 'M�todo de parejas', es el m�s eficiente.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 28-oct-2014

*/

var

	  tope : numerico               // 'N' n�meros a ordenar introducidos por el usuario.
		  i : numerico               // Primera variable de control para las iteraciones del bucle.
		  j : numerico               // Segunda variable de control para las iteraciones del bucle.
	 valor : vector [100] numerico  // Variable para almacenar el n�mero mayor de todos los introducidos.
		aux : numerico               // Variable auxiliar para hacer intercambios de valores.
	salida : logico         		  // Variable para segundo m�todo. Sale del bucle 'repetir', sino hay cambios.    
		

inicio

	cls()

	imprimir ("PROGRAMA QUE ORDENA DE MENOR A MAYOR 'X' NUMEROS INDICADOS POR USUARIO Y LOS ORDENA")

	repetir
		imprimir ("\n\nIntroduce cu�ntos n�meros deseas ordenar (entre 1 y 100): ")
		leer(tope)
	hasta (tope>=1 and tope<=100)

	desde i=1 hasta tope paso 1 {
		imprimir("\nIntroduce el valor del n�mero ", i, " :")
		leer(valor[i])
	}

/*
	// M�todo de intercambio
	desde i=2 hasta tope paso 1 {
		desde j=1 hasta i {
			si (valor[i]<valor[j]) {
				aux = valor[i]
				valor[i] = valor[j]
				valor[j] = aux
			}
		}
	}
*/

	// M�todo de pares
	repetir
		salida = SI                   // Empiezo 'salida' con un valor SI, para salir del bucle 'repetir' si el bucle 'desde' no sufre ning�n cambio en el condicional.
		desde i=1 hasta tope-1 {    // Por que en el bucle estoy comparando parejas ('i' e 'i+1')
			si (valor[i]>valor[i+1]) {
				aux = valor[i]
				valor[i] = valor[i+1]
				valor[i+1] = aux
				salida = NO             // En la primera pasada, se comprueban todos los pares. Si existe un cambio dentro del condicional, 
			}									// el valor de 'salida' ser� NO, por lo que al salir del bucle 'desde' se iniciar� de nuevo el bucle 'repetir'.
		}
	hasta (salida)
	
	imprimir("\nLos n�meros ordenados de menor a mayor son:")
	desde i=1 hasta tope paso 1 {
		imprimir(" ", valor[i])
	}


fin