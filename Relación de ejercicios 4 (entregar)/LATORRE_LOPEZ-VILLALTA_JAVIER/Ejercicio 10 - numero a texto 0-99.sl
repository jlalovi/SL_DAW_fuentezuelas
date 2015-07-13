/*

Ejercicio 10
============

OBJETIVO:  Pedir un número de 0 a 99 y mostrarlo escrito. Por ejemplo, para 56, mostrar 'cincuenta y seis'.

OBSERVACIONES: - El ejercicio no contempla valores decimales o cadena de caracteres.
				   - Para evitar crear un gran número de casos, tengo en cuenta las decenas y las unidades para sumar las cadenas cuando es apropiado.
				   - Los valores conflictivos para sumar cadenas son las unidades sin decenas y aquellos cuyas decenas son 1 o 2.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 06-oct-2014

*/

var

	decenas, unidades, cifra : numerico
	decenaTexto, unidadTexto, cifraTexto : cadena

inicio

	cls ()

	imprimir ("PROGRAMA PARA MOSTRAR CIFRA DEL 0 AL 99 EN TEXTO:")

	imprimir ("\n\nIntroduce un valor entre 0 y 99: ")
	leer (cifra)

	mientras ((cifra < 0) or (cifra > 99)) {
		imprimir ("\n\nPor favor, introduce un valor entre 0 y 99: ")
		leer (cifra)
	}

	unidades = cifra % 10
	decenas = ((cifra - unidades)/10)%10

	// UNIDADES
	si (cifra == 0) {
		cifraTexto = "cero"
	sino si (unidades <> 0)
		eval {
			caso (unidades == 1)
				unidadTexto = "uno"
			caso (unidades == 2)
				unidadTexto = "dos"
			caso (unidades == 3)
				unidadTexto = "tres"
			caso (unidades == 4)
				unidadTexto = "cuatro"
			caso (unidades == 5)
				unidadTexto = "cinco"
			caso (unidades == 6)
				unidadTexto = "seis"
			caso (unidades == 7)
				unidadTexto = "siete"
			caso (unidades == 8)
				unidadTexto = "ocho"
			caso (unidades == 9)
				unidadTexto = "nueve"
		}
	}

	// DECENAS
	si (decenas == 0) {                                   // Los valores sin decenas toman directamente el valor de las unidades.
		cifraTexto = unidadTexto
	}


	si (decenas == 1) {                                   // 17, 18 y 19 empiezan por "dieci" y siguen con una unidad, por lo que sumo las cadenas. 
		eval {
			caso (unidades == 0)
				cifraTexto = "diez"
			caso (unidades == 1)
				cifraTexto = "once"
			caso (unidades == 2)
				cifraTexto = "doce"
			caso (unidades == 3)
				cifraTexto = "trece"
			caso (unidades == 4)
				cifraTexto = "catorce"
			caso (unidades == 5)
				cifraTexto = "quince"
			caso (unidades == 6)
				cifraTexto = "deiciséis"
			sino
				decenaTexto = "dieci"
				cifraTexto = decenaTexto + unidadTexto	
		}
	}

	si (decenas == 2) {                                   // 20, 22, 23 y 26 no siguen una lógica por tener acentos o escribirse distinto. Con el resto sumo cadenas.
		eval {
			caso (unidades == 0)
				cifraTexto = "veinte"
			caso (unidades == 2)
				cifraTexto = "veintidós"
			caso (unidades == 3)
				cifraTexto = "veintitrés"
			caso (unidades == 6)
				cifraTexto = "veintiséis"
			sino
				decenaTexto = "veinti"
				cifraTexto = decenaTexto + unidadTexto				
		}
	}

	si (decenas == 3) {                                   // El resto de decenas + unidad siguen la misma lógica, por lo que se pueden agrupar sencillamente con las siguientes condiciones
		decenaTexto = "treinta"
	sino si (decenas == 4)
		decenaTexto = "cuarenta"
	sino si (decenas == 5)
		decenaTexto = "cincuenta"
	sino si (decenas == 6)
		decenaTexto = "sesenta"
	sino si (decenas == 7)
		decenaTexto = "setenta"
	sino si (decenas == 8)
		decenaTexto = "ochenta"
	sino si (decenas == 9)
		decenaTexto = "noventa"
	}

	si (decenas > 2) {
		si (unidades == 0) {
			cifraTexto = decenaTexto
		sino
			cifraTexto = decenaTexto + " y " + unidadTexto
		}
	}

	imprimir ("\nEl valor introducido es el '", cifraTexto, "'.")

fin
