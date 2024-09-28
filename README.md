# LENGUAJE-TALLER1
Integrantes: Bruno Toro, Javier Saldaño, Ignacio Rodríguez

Lenguaje	de	Programación	– Taller 1
Profesor: Paul Leger (pleger@ucn.cl) 
Ayudante: José Miguel Carrillo (jose.carrillo@alumnos.ucn.cl)

Objetivo
● Practicar	el	uso	del	lenguaje	Scheme usando	Racket (60	puntos)
Crea las siguientes funciones utilizando Racket. Cada ejercicio vale 10 puntos. 

1. Función (ordenada L)
Determina si una lista está ordenada.
Ejemplo de salida:
(ordenada '(1 2 3 4 5)) ; #t
(ordenada '(5 4 3 2 1)) ; #t
(ordenada '()) ; #t
(ordenada '(1 2 3 2 1)) ; #f


2. Función (intercalar n L)
Inserta el valor “n” entre todos los valores de la lista “L”
Ejemplo de salida:
(intercalada 0 ‘(1 2 3 4 5)) → (1 0 2 0 3 0 4 0 5)

3. Función (eliminarMenores n L)
Elimina todos los valores menores a “n” que se encuentren en la lista “L”.
Ejemplo de salida:
(eliminarMenores 10 (15 8 10 11 9 22 -12 40)) → (15 11 22 40)

4. Función (contador n L)
Devuelve la cantidad de veces que aparece el valor “n” en la lista “L”.
Ejemplo de salida:
(contador 5 '(11 5 12 5 32 0 5 99 105 5)) → 4

5. Función (contadorListas L)
Devuelve el número de listas que tiene “L”.
Ejemplo de salida:
(contadorListas 1) ) → 0 listas
(contadorListas '(1 2 3 4 5 6 7 8)) → 1 lista
(contadorListas '(1 (2 3 4 5 6) 7 8)) ) → 2 listas
(contadorListas '(1 (2 3 (4) 5 6) 7 8)) ) → 3 listas
(contadorListas '((1) (2 3 (4) 5 6) 7 8)) ) → 4 listas
(contadorListas '((1) (2 3 (4) (5 6)) 7 8)) ) → 5 listas
(contadorListas '((1) ((2 3 (4) (5 6)) 7) 8)) ) → 6 listas
(contadorListas '((1) ((2 3 (4) (5 6)) 7) (8))) ) → 7 listas

6. Función (aplanar L)
Devuelve la lista plana, sin listas anidadas.
Ejemplo de salida:
(aplanar '((1 (2 3) 4) 5 (6)))) → (1 2 3 4 5 6)

7. Bonus (Ejercicio opcional)
Función (opListas L)
Retorna el resultado de las operaciones dentro de la lista “L”. Las operaciones 
SIEMPRE tendrán el formato:
 X Operación Y
Ejemplo de salida:
((1 + (4 * 12)) / 10) → 4.9
( (1 + (2 * (3 + 4))) - 5) → 10
((1 + 2) * (3 + 4)) / (8 - 4)) → 5.25
() → 0

Condiciones	de	entrega
    ● Fecha	de	entrega:	03/10/2024.
    ● Con	60 puntos	es	el	7.0,	el	taller	contiene	como	máximo 70	puntos,	así	que	poseen	10 puntos	
    extras	si	lo	necesitan.
    ● Seguir	el	“Código	de	Honor”	establecido	en	el	curso.	
    ● Deben	formar	grupos	de	3 integrantes.
    ● Los	 programas	 realizados	 deben	 desarrollarse	 en	 PLAI	 usando	 Dr.	 Racket o	 usando	 IDE	
    alternativo. Cada	pregunta	debe	ser	un	script,	es	decir,	potencialmente	7 scripts	deben	ser	
    entregados.
    ● Cada	ejercicio	numerado	debe	entregarse	en	su	propio	archivo.
    ● Cualquier	 entrega	 relacionada	 con	 código	 debe	 funcionar/ejecutar.	 Si	 el	 script no	
    compila/ejecuta,	la	entrega	se	evalúa	con	nota	mínima	1.0.
    ● Las	entregas	 deben	 ser	 subidas	a	Campus	Virtual mediante	 un	archivo	 ZIP	 con	el	 formato	
    Taller1_apellido1_apellido2_apellido3.zip,	el	cual	contenga	todos scripts.