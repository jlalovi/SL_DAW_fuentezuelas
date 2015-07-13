/*

Ejercicio 12
============

OBJETIVO: Programa que pide el a�o de nacimiento al usuario y calcula la edad del mismo. Si el a�o de nacimiento introducido 
			 es posterior a 201x por error el programa volver� a pedir el a�o de nacimiento correcto.
/
OBSERVACION: - Obligo al usuario a introducir valores de d�a entre 1 y 31, mes entre 1 y 12 y a�o entre 1900 y 2014 en la fecha
					de nacimiento, siendo coherentes con el r�cord que hay ahora e la persona con m�s a�os viva en el mundo.
				 - En el programa, indico al usuario que introduzca la fecha de hoy.
				 - No estoy considerando a�os bisiestos ni meses de 28, 30 ni 31 d�as, por lo que no voy a mostrar error si alguien nace
					o si el d�a de hoy es, por ejemplo, el 31 de febrero de 2001.
				 - Sin embargo, obligo tambi�n al usuario a introducir una fecha de nacimiento que no sea superior a la de "hoy", mostrando 
				   el correspondiente mensaje de error y un mensaje especial si la fecha introducida es la de "hoy".

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 31-oct-2014

*/

var

	   hdia, hmes, ha�o : numerico         // Variables que contienen el valor introducido por el usuario de la fecha de hoy.
	      dia, mes, a�o : numerico         // Variables que contienen el valor introducido por el usuario de su fecha de nacimiento.
	edadA, edadM, edadD : numerico         // Variable que almacenar� la edad a mostrar del usuario (a partir de su fecha de nacimiento). A�os, Meses y D�as.
		

inicio

	cls()

	imprimir ("PROGRAMA QUE INDICA LA EDAD DEL USUARIO CONOCIENDO SU FECHA DE NACIMIENTO")

// FECHA DE HOY	
	repetir
		imprimir("\n\nIntroduce el a�o de hoy (entre 1900 y 2014): ")
		leer(ha�o)
	hasta (ha�o>=1900)
	repetir
		imprimir("\nIntroduce el mes de hoy (entre 1 y 12): ")
		leer(hmes)
	hasta (hmes>=1 and hmes<=12)
	repetir
		imprimir("\nIntroduce el d�a de hoy (entre 1 y 31): ")
		leer(hdia)
	hasta (hdia>=1 and hdia<=31)

// FECHA DE NACIMIENTO
	repetir
		imprimir("\nIntroduce tu a�o de nacimiento (entre 1900 y 2014): ")
		leer(a�o)
	hasta (a�o>=1900 and a�o<=2014)

	repetir
		imprimir("\nIntroduce tu mes de nacimiento (entre 1 y 12): ")
		leer(mes)
		si (a�o==ha�o and mes>hmes and mes<=12) {
			repetir
					imprimir("\nHoy estamos a ",hdia, " del ", hmes, " de ", ha�o,", por lo que no puede ser que hayas nacido",
								"\ndespu�s de esa fecha.",
								"\nIntroduce un mes entre 1 y ", hmes ,": ")
					leer(mes)
			hasta (mes>=1 and mes<=hmes)
		}
	hasta (mes>=1 and mes<=12)
	repetir
		imprimir("\nIntroduce tu d�a de nacimiento (entre 1 y 31): ")
		leer(dia)
		si (a�o==ha�o and mes==hmes and dia>hdia and dia<=31) {
			repetir
					imprimir("\nHoy estamos a ",hdia, " del ", hmes, " de ", ha�o,", por lo que no puede ser que hayas nacido",
								"\ndespu�s de esa fecha.",
								"\nIntroduce un d�a entre 1 y ", hdia ,": ")
					leer(dia)
			hasta (dia>=1 and dia<=hdia)
		}
	hasta (dia>=1 and dia<=31)

// COMPROBACI�N DE FECHA DE HOY Y FECHA DE NACIMIENTO PARA AVERIGUAR EDAD
	si (dia==hdia and mes==hmes and a�o==ha�o) {
		imprimir("\n�Has nacido hoy! �Felicidades!")   // Mensaje especial si la fecha introducida es la de hoy.
	sino
		si (dia>=hdia) {                               // Si el d�a de la fecha de nacimiento es mayor o igual al d�a de hoy, sumo 1 a mes.
			mes = mes + 1
		}
		si (mes>=hmes) {                               // Si el mes de la fecha de nacimiento es mayor o igual al mes de hoy (+1 si se da la situaci�n anterior), sumo 1 a mes.
			a�o = a�o + 1
		}

		edadA = ha�o - a�o                             // Diferencia entre el a�o de nacimiento y el a�o de hoy (+1 a�o si se da la condici�n anterior)
		si (hmes-mes<0) {
			edadM = 12 + (hmes - mes)                   // Diferencia entre n� max de meses y mes de hoy (+1 si se da la primera condici�n, l�nea 85)
		sino
			edadM = hmes - mes
		}
		si (hdia-dia<0) {
			edadD = 30 + (hdia - dia)                   // Valor aproximado de d�as (error +/-2d�as). No estoy considerando los meses de 28, 29, 30 y 31 d�as.
		sino
			edadD = hdia - dia                          // En este caso, afortunadamente la edad mostrada ser�a exacta.
		}

		imprimir("\nTienes ", edadA, " a�o/s ",
									 edadM, " mes/es y ",
									 edadD, " d�a/s.")		
	}

fin