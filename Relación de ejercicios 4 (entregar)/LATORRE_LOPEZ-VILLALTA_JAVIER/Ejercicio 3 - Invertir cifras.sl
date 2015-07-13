/*

Ejercicio 3
===========

OBJETIVO: Pedir un número entre 0 y 9.999 y mostrarlo con las cifras al revés. 

OBSERVACIONES: - Damos por hecho que el usuario introduce uno de esos números enteros.
				   - Considero que el valor introducido sea de una cifra para mostrar un mensaje
					  diferente, diciendo que sólo hay una cifra y por tanto no existe el inverso.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 10-oct-2014

*/

var

													x : numerico    // Valor (0-9999) a introducir por el usuario.
	unidades, decenas, centenas, millares : numerico    // Variables para almacenar la cifra correspondiente.
												 aux : numerico    // Variable auxilar para hacer cambios.
										  xInverso : numerico    // En esta variable almacenaré el valor de 'x' invertido

inicio

	cls()

	imprimir ("PROGRAMA PARA INVERTIR EL ORDEN DE LAS CIFRAS:")
         
	imprimir ("\n\nIntroduce un valor numérico entre 0 y 9999 ")
	leer(x)

	
	// Obtener Unidades, decenas, centenas y millares utilizando MOD.
	unidades =    x % 10
	 decenas = ( (x - unidades) / 10 ) % 10
	centenas = ( (x - unidades - decenas*10) / 100 ) % 10
	millares = ( (x - unidades - decenas*10 - centenas*100) / 1000 ) % 10

	// Ordenar inversamente en función de si millares, centenas y decenas son 0, utilizando variable 'aux' para intercambiar valores.
	// Para ello elaboro 4 casos que represento con condicionales, dependiendo de si el número tiene 1, 2, 3 o 4 cifras.

	si (millares == 0 and centenas == 0 and decenas == 0) {
		imprimir ("\n",x ," no tiene inverso, ya que es una sóla cifra.")
	sino 
		si (millares == 0 and centenas == 0) {
			aux = unidades
			unidades = decenas
			decenas = aux
			xInverso = decenas*10 + unidades
		sino si (millares == 0)
			aux = unidades
			unidades = centenas
			centenas = aux
			xInverso = centenas*100 + decenas*10 + unidades
		sino
			aux = unidades
			unidades = millares
			millares = aux
			aux = decenas
			decenas = centenas
			centenas = aux
			xInverso = millares*1000 + centenas*100 + decenas*10 + unidades
		}
		imprimir ("\nEl inverso de ",x ," es ", xInverso, ".")
	}

fin

/*

Quitando las variables (unidades, decenas, centenas y millares), y añadiendo la variable 'resto', otra
manera menos legible, pero más corta y preparada para ser incorporada en un bucle sería la siguiente:

inicio

	cls()

	imprimir ("PROGRAMA PARA INVERTIR EL ORDEN DE LAS CIFRAS:")
         
	imprimir ("\n\nIntroduce un valor numérico entre 0 y 9999 ")
	leer(x)

	aux = x
	xInverso = 0
	
	resto = aux % 10
	xInverso = resto + xInverso * 10
	aux = (aux - resto) / 10 

	si (aux > 0) {
	resto = aux % 10
	xInverso = resto + xInverso * 10
	aux = (aux - resto) / 10
	}

	si (aux > 0) {
	resto = aux % 10
	xInverso = resto + xInverso * 10
	aux = (aux - resto) / 10 
	}

	si (aux > 0) {
	resto = aux % 10
	xInverso = resto + xInverso * 10
	aux = (aux - resto) / 10 
	}

	imprimir ("\nEl inverso de ",x ," es ", inverso, ".")

fin	

*/
