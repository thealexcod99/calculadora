SubProceso op <- CapturarOpcion()
	
	Definir op Como Entero
	Escribir "Elige una opci�n:"
	Escribir ""
	Escribir "Pulsa 1(suma)"
	Escribir "Pulsa 2(resta)"
	Escribir "Pulsa 3(multiplicaci�n)"
	Escribir "Pulsa 4(divisi�n)"
	Escribir "Pulsa 5 (salir)"
	Leer op
	
FinSubProceso

Subproceso ret <- Suma ( a,b )
	
	ret <- a + b
	
Fin Subproceso

Subproceso ret <- Resta ( a,b )
	
	ret <- a - b
	
Fin Subproceso

Subproceso ret <- Multiplicacion ( a,b )
	
	ret <- a * b
	
Fin Subproceso

Subproceso ret <- Division ( a,b )
	
	ret <- a / b
	
Fin Subproceso


Algoritmo Minicalculadora
	
	Definir a, b, res Como Entero
	Definir op Como Entero
	
	Repetir
		
		op = CapturarOpcion()

		Si op>=1 y op<=4 Entonces
		
			
			Escribir "Dame a"
			Leer a
			Escribir "Dame b"
			Leer b
			
			Si op=1 Entonces
				
				res <-Suma(a,b)
				Escribir "La suma de ", a, " y ", b, " es ", res
				Escribir ""
				
			SiNo
				Si op=2 Entonces
					
					res <-Resta(a,b)
					Escribir "La resta de ", a, " y ", b, " es ", res
					Escribir ""
					Escribir ""
					
				SiNo
					Si op=3 Entonces
						
						res <-Multiplicacion(a,b)
						Escribir "La multiplicaci�n de ", a, " y ", b, " es ", res
						Escribir ""
						
					SiNo
						Si op=4 Entonces
							
							res <-Division(a,b)
							Escribir "La divisi�n de ", a, " y ", b, " es ", res
							Escribir ""
							
						Fin Si
					Fin Si
				Fin Si
			Fin Si
			
		FinSi
		
		Si (op<1 || op>5) Entonces
			
			Escribir "Opci�n no v�lida."
			Escribir ""
			
		FinSi
		
	Hasta Que op=5
	
	Si op=5 Entonces
		
		Escribir "Hasta pronto."
		
	FinSi
	
FinAlgoritmo