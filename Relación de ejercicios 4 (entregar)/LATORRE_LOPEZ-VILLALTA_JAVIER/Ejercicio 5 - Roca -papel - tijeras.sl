/*

Ejercicio 5
===========

OBJETIVO: En el juego para dos personas llamado "ROCA, PAPEL Y TIJERAS" cada jugador escoge ser 
			 "T", "R" o "P" respectivamente. El ganador se determina así: roca rompe tijeras, las 
			 tijeras cortan el papel, el papel cubre la roca, el juego es un empate si ambos jugadores 
			 eligen la misma opción. Elaborar un programa para que determine que jugador gana, la 
			 salida debe mostrarse de la siguiente forma: "T-R Roca rompe tijeras gana el jugador 2". 

OBSERVACIÓN   - A la hora de leer las opciones, he creado dos bucles para obligar al usuario introducir
				    uno de los valores Roca ('r'), Papel ('p') o Tijeras ('t').

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 12-oct-2014

*/

var

			 mano1, mano2 : cadena   // Valor Roca ('r'), Papel ('p'), Tijeras ('t'), que almacenará cada jugador.
	pGana, rGana, tGana : cadena   // Cadenas de texto que se repiten.


inicio

	cls()

	pGana = "¡Papel envuelve a la roca!"
	rGana = "¡Roca rompe las tijeras!"
	tGana = "¡Tijeras cortan el papel!"

	imprimir ("JUEGO: ¡ROCA - PAPEL - TIJERAS!")

	// JUGADOR 1:
	mientras (mano1<>"r" and mano1<>"R" and mano1<>"p" and mano1<>"P" and mano1<>"t" and mano1<>"T") {
		imprimir ("\n\nJugador 1, elige Roca ('r'), Papel ('p') o Tijeras ('t'), pulsando la letra que corresponda: ")
		leer(mano1)
	}
	
	// JUGADOR 2:
	mientras (mano2<>"r" and mano2<>"R" and mano2<>"p" and mano2<>"P" and mano2<>"t" and mano2<>"T") {	
		imprimir ("\n\nJugador 2, elige Roca ('r'), Papel ('p') o Tijeras ('t'), pulsando la letra que corresponda: ")
		leer(mano2)
	}

	
	si (mano1 == mano2) {
		imprimir("\n\n¡Tenemos un empate!")

	sino si ( (mano1 == "r" or mano1 == "R") and (mano2 == "p" or mano2 == "P") )
		imprimir("\n\n¡El jugador 2 ha ganado! ", pGana)

	sino si ( (mano1 == "p" or mano1 == "P") and (mano2 == "r" or mano2 == "R") )
		imprimir("\n\n¡El jugador 1 ha ganado! ", pGana)

	sino si ( (mano1 == "r" or mano1 == "R") and (mano2 == "t" or mano2 == "T") )
		imprimir("\n\n¡El jugador 1 ha ganado! ", rGana)

	sino si ( (mano1 == "t" or mano1 == "T") and (mano2 == "r" or mano2 == "R") )
		imprimir("\n\n¡El jugador 2 ha ganado! ", rGana)

	sino si ( (mano1 == "t" or mano1 == "T") and (mano2 == "p" or mano2 == "P") )
		imprimir("\n\n¡El jugador 1 ha ganado! ", tGana)

	sino si ( (mano1 == "p" or mano1 == "P") and (mano2 == "t" or mano2 == "T") )
		imprimir("\n\n¡El jugador 2 ha ganado! ", tGana)
	}


fin
