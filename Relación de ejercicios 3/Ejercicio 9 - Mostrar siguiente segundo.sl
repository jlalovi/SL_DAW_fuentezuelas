/*

Ejercicio 9
===========

OBJETIVO: Pedir una hora de la forma hora, minutos y segundos, y mostrar la hora en el segundo siguiente.

AUTOR: Javier Latorre -> jlalovi@gmail.com

FECHA: 06-oct-2014

*/

var

	s, m, h : numerico              // Segundos, minutos y horas introducidas
	nS, nM, nH : numerico           // Nuevos valores

inicio

	cls ()

	imprimir ("PROGRAMA PARA MOSTRAR LA HORA INTRODUCIDA MAS UN SEGUNDO:")

	imprimir ("\n\nIntroduce la hora: ")
	leer (h)

	imprimir ("\n\nIntroduce los minutos: ")
	leer (m)

	imprimir ("\n\nIntroduce los segundos: ")
	leer (s)

	si (s >= 0 and s <= 59 and m >= 0 and m <= 59 and h >= 0 and h <= 23) {
		si (s == 59) {
			nS = 0
			si (m == 59) {
				nM = 0
				si (h == 23) {
					nH = 0
				sino
					nH = h + 1
				}
			sino
				nM = m + 1
				nH = h
			}
		sino
			nS = s + 1
			nM = m
			nH = h
		}
		imprimir ("\n Ahora son las ", nH, " horas, ", nM, " minutos y ", nS, " segundos.")

	sino
		imprimir ("\n La hora introducida no es correcta.")
	}



fin
