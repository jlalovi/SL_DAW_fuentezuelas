/*

Ejercicio 11
============

OBJETIVO: Introduce por teclado dos horas en formato: h:m:s.
Mostrar diferencia de tiempo transcurrido entre las dos en formato h:m:s

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 25-sep-2014

*/

var

	h1, m1, s1 : numerico // Primera hora (h:m:s) introducida por el usuario
	h2, m2, s2 : numerico // Segunda hora (h:m:s) introducida por el usuario
	h3, m3, s3 : numerico // Hora (h:m:s) calculada en el programa y mostrada en pantalla
	total : numerico // Total en segundos de la diferencia de las dos horas introducidas

inicio

	cls ()

	imprimir ("ESTE PROGRAMA TE INDICA LA DIFERENCIA ENTRE DOS HORAS EXPRESADAS EN (H:M:S)")

	imprimir ("\nPrimera hora:")

	imprimir ("\nIntroduce el número de horas ")
	leer (h1)

	imprimir ("Introduce el número de minutos ")
	leer (m1)

	imprimir ("Introduce el número de segundos ")
	leer (s1)

	imprimir ("\nSegunda hora:")

	imprimir ("\nIntroduce el número de horas ")
	leer (h2)

	imprimir ("Introduce el número de minutos ")
	leer (m2)

	imprimir ("Introduce el número de segundos ")
	leer (s2)
	
	total = (((s1 + m1*60 + h1*60*60) - (s2 + m2*60 + h2*60*60))  ^2)  ^(1/2) // Si la diferencia tiene un valor negativo, haciendo el cuadrado y la raíz cuadrada del total, lo convierto en positivo.

	s3 = total%60 // El resto del modular del total de segundos a 60, va a ser el residuo de segundos que marcara el reloj
	m3 = ((total-s3)/60)%60 // El resto del total en segundos menos los segundos obtenidos anteriormente, da como resultado los minutos.
	h3 = (((total-s3)/60)-m3)/60 // Si a la diferencia entre el total de segundos y los segundos obtenidos lo divides entre 60, y a ese resultado le restas los minutos obtenidos y lo divides entre 60, resulta el total de horas.

	imprimir ("\n La diferencia expresada en h:m:s entre ", h1 ,(":"), m1 ,(":"), s1, " y ", h2 ,(":"), m2 ,(":"), s2, (" es:\n"),  
				h3 ,(":"), m3 ,(":"), s3)


fin