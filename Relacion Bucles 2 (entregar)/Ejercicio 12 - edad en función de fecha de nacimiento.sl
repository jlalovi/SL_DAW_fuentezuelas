/*

Ejercicio 12
============

OBJETIVO: Programa que pide el año de nacimiento al usuario y calcula la edad del mismo. Si el año de nacimiento introducido 
			 es posterior a 201x por error el programa volverá a pedir el año de nacimiento correcto.
/
OBSERVACION: - Obligo al usuario a introducir valores de día entre 1 y 31, mes entre 1 y 12 y año entre 1900 y 2014 en la fecha
					de nacimiento, siendo coherentes con el récord que hay ahora e la persona con más años viva en el mundo.
				 - En el programa, indico al usuario que introduzca la fecha de hoy.
				 - No estoy considerando años bisiestos ni meses de 28, 30 ni 31 días, por lo que no voy a mostrar error si alguien nace
					o si el día de hoy es, por ejemplo, el 31 de febrero de 2001.
				 - Sin embargo, obligo también al usuario a introducir una fecha de nacimiento que no sea superior a la de "hoy", mostrando 
				   el correspondiente mensaje de error y un mensaje especial si la fecha introducida es la de "hoy".

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 31-oct-2014

*/

var

	   hdia, hmes, haño : numerico         // Variables que contienen el valor introducido por el usuario de la fecha de hoy.
	      dia, mes, año : numerico         // Variables que contienen el valor introducido por el usuario de su fecha de nacimiento.
	edadA, edadM, edadD : numerico         // Variable que almacenará la edad a mostrar del usuario (a partir de su fecha de nacimiento). Años, Meses y Días.
		

inicio

	cls()

	imprimir ("PROGRAMA QUE INDICA LA EDAD DEL USUARIO CONOCIENDO SU FECHA DE NACIMIENTO")

// FECHA DE HOY	
	repetir
		imprimir("\n\nIntroduce el año de hoy (entre 1900 y 2014): ")
		leer(haño)
	hasta (haño>=1900)
	repetir
		imprimir("\nIntroduce el mes de hoy (entre 1 y 12): ")
		leer(hmes)
	hasta (hmes>=1 and hmes<=12)
	repetir
		imprimir("\nIntroduce el día de hoy (entre 1 y 31): ")
		leer(hdia)
	hasta (hdia>=1 and hdia<=31)

// FECHA DE NACIMIENTO
	repetir
		imprimir("\nIntroduce tu año de nacimiento (entre 1900 y 2014): ")
		leer(año)
	hasta (año>=1900 and año<=2014)

	repetir
		imprimir("\nIntroduce tu mes de nacimiento (entre 1 y 12): ")
		leer(mes)
		si (año==haño and mes>hmes and mes<=12) {
			repetir
					imprimir("\nHoy estamos a ",hdia, " del ", hmes, " de ", haño,", por lo que no puede ser que hayas nacido",
								"\ndespués de esa fecha.",
								"\nIntroduce un mes entre 1 y ", hmes ,": ")
					leer(mes)
			hasta (mes>=1 and mes<=hmes)
		}
	hasta (mes>=1 and mes<=12)
	repetir
		imprimir("\nIntroduce tu día de nacimiento (entre 1 y 31): ")
		leer(dia)
		si (año==haño and mes==hmes and dia>hdia and dia<=31) {
			repetir
					imprimir("\nHoy estamos a ",hdia, " del ", hmes, " de ", haño,", por lo que no puede ser que hayas nacido",
								"\ndespués de esa fecha.",
								"\nIntroduce un día entre 1 y ", hdia ,": ")
					leer(dia)
			hasta (dia>=1 and dia<=hdia)
		}
	hasta (dia>=1 and dia<=31)

// COMPROBACIÓN DE FECHA DE HOY Y FECHA DE NACIMIENTO PARA AVERIGUAR EDAD
	si (dia==hdia and mes==hmes and año==haño) {
		imprimir("\n¡Has nacido hoy! ¡Felicidades!")   // Mensaje especial si la fecha introducida es la de hoy.
	sino
		si (dia>=hdia) {                               // Si el día de la fecha de nacimiento es mayor o igual al día de hoy, sumo 1 a mes.
			mes = mes + 1
		}
		si (mes>=hmes) {                               // Si el mes de la fecha de nacimiento es mayor o igual al mes de hoy (+1 si se da la situación anterior), sumo 1 a mes.
			año = año + 1
		}

		edadA = haño - año                             // Diferencia entre el año de nacimiento y el año de hoy (+1 año si se da la condición anterior)
		si (hmes-mes<0) {
			edadM = 12 + (hmes - mes)                   // Diferencia entre nº max de meses y mes de hoy (+1 si se da la primera condición, línea 85)
		sino
			edadM = hmes - mes
		}
		si (hdia-dia<0) {
			edadD = 30 + (hdia - dia)                   // Valor aproximado de días (error +/-2días). No estoy considerando los meses de 28, 29, 30 y 31 días.
		sino
			edadD = hdia - dia                          // En este caso, afortunadamente la edad mostrada sería exacta.
		}

		imprimir("\nTienes ", edadA, " año/s ",
									 edadM, " mes/es y ",
									 edadD, " día/s.")		
	}

fin