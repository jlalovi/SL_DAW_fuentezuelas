/*

Ejercicio 6 y 7
===============

OBJETIVO: Programa que pide un número a un usuario (0-1000) y después otro usuario tiene que adivinar el primer 
			 número introducido. Me va dando pistas sobre si mi número es mayor o menor que el buscado.  Al final 
		    (cuando se averigua el número buscado, me indica el número de intentos que han sido necesarios).

OBSERVACIÓN: * En este programa utilizo los 3 tipos diferentes de bucles:
					- 'Repetir-hasta' para forzar al usuario a introducir un número entre el 0 y el 1000.
					- 'Desde-hasta' para que la pantalla se desplace hacia abajo y el usuario 2 no vea el número introducido 
						por el usuario 1.
					- 'Mientras' con condicionales anidados que indican si el número a averiguar es mayor o menor, y no poder 
						salir el bucle hasta que se averigüe el número. Los condicionales a su vez anidan bucles 'Repetir-hasta' 
						para forzar al usuario a introducir un número entre el 0 y el 1000.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 21-oct-2014

*/

var
 
				 i : numerico   // Variable de control para las iteraciones del bucle.
	 nIncognita : numerico   // Variable introducida por el primer usuario para adivinar.
	  nAdivinar : numerico   // Variable introducida por el segundo usuario para conseguir el número a adivinar.
		  dibujo : cadena     // Variable que utilizo para dibujar caracteres para desplazar la pantalla de una manera más visual y 'bonita'.



inicio

	cls()

	imprimir ("JUEGO PARA ADIVINAR UN NÚMERO DEL 0 AL 1000")

	repetir
		imprimir ("\n\nIntroduce un número entre 0 y 1000 para que averigüe el otro jugador: ")
		leer(nIncognita)
	hasta (nIncognita>=0 and nIncognita<=1000)

	desde i=1 hasta 25 {            //
		dibujo = dibujo + "*"        // Dibujito con asteriscos para que no se vea el número introducido
		imprimir("\n", dibujo)       // por el primer usuario para adivinar.
	}                               //

	imprimir ("\n\nIntenta averiguar el número introducido. Introduce un número del 0 al 1000: ")
	leer(nAdivinar)

	mientras (nIncognita<>nAdivinar) {
		si (nAdivinar<nIncognita) {
			imprimir ("\n\n¡El número incógnita es más grande que ", nAdivinar, "!")
			repetir
				imprimir ("\nIntroduce un nuevo número del 0 al 1000: ")
				leer(nAdivinar)
			hasta (nAdivinar>=0 and nAdivinar<=1000)	
		sino si (nAdivinar>nIncognita)
			imprimir ("\n\n¡El número incógnita es más pequeño que ", nAdivinar, "!")
			repetir
				imprimir ("\nIntroduce un nuevo número del 0 al 1000: ")
				leer(nAdivinar)
			hasta (nAdivinar>=0 and nAdivinar<=1000)
		}
	}

	imprimir ("\n\n¡Enhorabuena! ¡", nIncognita, " es el número correcto!")

fin