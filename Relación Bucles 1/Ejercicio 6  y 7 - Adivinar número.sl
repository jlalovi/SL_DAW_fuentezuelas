/*

Ejercicio 6 y 7
===============

OBJETIVO: Programa que pide un n�mero a un usuario (0-1000) y despu�s otro usuario tiene que adivinar el primer 
			 n�mero introducido. Me va dando pistas sobre si mi n�mero es mayor o menor que el buscado.  Al final 
		    (cuando se averigua el n�mero buscado, me indica el n�mero de intentos que han sido necesarios).

OBSERVACI�N: * En este programa utilizo los 3 tipos diferentes de bucles:
					- 'Repetir-hasta' para forzar al usuario a introducir un n�mero entre el 0 y el 1000.
					- 'Desde-hasta' para que la pantalla se desplace hacia abajo y el usuario 2 no vea el n�mero introducido 
						por el usuario 1.
					- 'Mientras' con condicionales anidados que indican si el n�mero a averiguar es mayor o menor, y no poder 
						salir el bucle hasta que se averig�e el n�mero. Los condicionales a su vez anidan bucles 'Repetir-hasta' 
						para forzar al usuario a introducir un n�mero entre el 0 y el 1000.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 21-oct-2014

*/

var
 
				 i : numerico   // Variable de control para las iteraciones del bucle.
	 nIncognita : numerico   // Variable introducida por el primer usuario para adivinar.
	  nAdivinar : numerico   // Variable introducida por el segundo usuario para conseguir el n�mero a adivinar.
		  dibujo : cadena     // Variable que utilizo para dibujar caracteres para desplazar la pantalla de una manera m�s visual y 'bonita'.



inicio

	cls()

	imprimir ("JUEGO PARA ADIVINAR UN N�MERO DEL 0 AL 1000")

	repetir
		imprimir ("\n\nIntroduce un n�mero entre 0 y 1000 para que averig�e el otro jugador: ")
		leer(nIncognita)
	hasta (nIncognita>=0 and nIncognita<=1000)

	desde i=1 hasta 25 {            //
		dibujo = dibujo + "*"        // Dibujito con asteriscos para que no se vea el n�mero introducido
		imprimir("\n", dibujo)       // por el primer usuario para adivinar.
	}                               //

	imprimir ("\n\nIntenta averiguar el n�mero introducido. Introduce un n�mero del 0 al 1000: ")
	leer(nAdivinar)

	mientras (nIncognita<>nAdivinar) {
		si (nAdivinar<nIncognita) {
			imprimir ("\n\n�El n�mero inc�gnita es m�s grande que ", nAdivinar, "!")
			repetir
				imprimir ("\nIntroduce un nuevo n�mero del 0 al 1000: ")
				leer(nAdivinar)
			hasta (nAdivinar>=0 and nAdivinar<=1000)	
		sino si (nAdivinar>nIncognita)
			imprimir ("\n\n�El n�mero inc�gnita es m�s peque�o que ", nAdivinar, "!")
			repetir
				imprimir ("\nIntroduce un nuevo n�mero del 0 al 1000: ")
				leer(nAdivinar)
			hasta (nAdivinar>=0 and nAdivinar<=1000)
		}
	}

	imprimir ("\n\n�Enhorabuena! �", nIncognita, " es el n�mero correcto!")

fin