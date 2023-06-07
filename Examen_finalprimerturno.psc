Algoritmo Examen_finalprimerturno
	num = aleatorio(1,70)
	dimension usuarios[num,5]
	Dimension tazas[num]
	Escribir "El número de usuarios es aleatorio"
	
	moneda1 = 0 
	moneda2 = 0
	moneda5 = 0
	
	
	Para i= 1 Hasta num Con Paso 1 Hacer
		n =Aleatorio(1,3)
		si n = 3 Entonces
			usuarios[i,1] = 5
			
		sino
			si n = 2 Entonces
				usuarios[i,1] = 2
				p = aleatorio(1,2)
				usuarios[i,2] = p
				usuarios[i,3] = 5 -(2+p) 
			SiNo
				si n = 1 Entonces
					usuarios[i,1] = 1
					m = Aleatorio(1,2)
					si m = 1 Entonces
						usuarios[i,2] = 1
						b = Aleatorio(1,2)
						usuarios[i,3] = b
						usuarios[i,4] = 5 -(b+1+1)
					SiNo
						si m=2 Entonces
							usuarios[i,2] = 2
							b = Aleatorio(1,2)
							usuarios[i,3] = b
							si b = 1 Entonces
								usuarios[i,4] = 1
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	Fin Para
	totaltazas = 0
	Escribir "          tazas:   monedas:"
	Para i=1 Hasta num Con Paso 1 Hacer 
		tazas[i] = Aleatorio(1,3)
		totaltazas = totaltazas +tazas[i]
		Escribir Sin Saltar "usuario ", i, ":  ", tazas[i], " x  (  "
		Para j=1 Hasta 5 Con Paso 1 Hacer
			
			
			si usuarios[i,j] > 0 Entonces
				Escribir Sin Saltar usuarios[i,j]," "
				si usuarios[i,j] = 1 y tazas[i] = 1 Entonces
					moneda1 = moneda1 +1
				SiNo
					si usuarios[i,j] = 1 y tazas[i] = 2 Entonces
						moneda1 = moneda1 + 2
					SiNo
						si usuarios[i,j] = 1 y tazas[i] = 3 Entonces
							moneda1 = moneda1 + 3
						FinSi
					FinSi
				FinSi
				
				si usuarios[i,j] = 2 y tazas[i] = 1 Entonces
					moneda2 = moneda2 +1
				SiNo
					si usuarios[i,j] = 2 y tazas[i] = 2 Entonces
						moneda2 = moneda2 + 2
					SiNo
						si usuarios[i,j] = 2 y tazas[i] = 3 Entonces
							moneda2 = moneda2 + 3
						FinSi
					FinSi
				FinSi
				
				si usuarios[i,j] = 5 y tazas[i] = 1 Entonces
					moneda5 = moneda5 +1
				SiNo
					si usuarios[i,j] = 5 y tazas[i] = 2 Entonces
						moneda5 = moneda5 + 2
					SiNo
						si usuarios[i,j] = 5 y tazas[i] = 3 Entonces
							moneda5 = moneda5 + 3
						FinSi
					FinSi
				FinSi
			
				
				
				
				
			FinSi
			
			
			
			
		Fin Para
		Escribir sin saltar ")"
		Escribir ""
	Fin Para
	
	Escribir "monedas de 1bs : ", moneda1
	Escribir "monedas de 2bs : ", moneda2
	Escribir "monedas de 5bs : ", moneda5
	saldo = moneda1 + (moneda2*2)+ (moneda5*5)
	Escribir "Tazas vendidas: ", totaltazas, " de 300"
	Escribir "Ganancia: ", saldo
FinAlgoritmo
