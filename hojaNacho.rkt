#lang racket
;1. Función (ordenada L)
;Determina si una lista está ordenada.
;Ejemplo de salida:
(define (ordenada lista)
  (cond
    [(or (empty? lista) (empty? (cdr lista))) #t]               
    [(> (car lista) (car (cdr lista))) (descendente lista)] 
    [else (ascendente lista)]))            

(define (descendente lista)
  (cond
    [(or (empty? lista) (empty? (cdr lista))) #t] 
    [(>= (car lista) (car (cdr lista))) (descendente (cdr lista))] 
    [else #f]))

(define (ascendente lista)
  (cond
    [(or (empty? lista) (empty? (cdr lista))) #t] 
    [(<= (car lista) (car (cdr lista))) (ascendente (cdr lista))] 
    [else #f]))



(ordenada '(1 2 3 4 5)) ; #t
(ordenada '(5 4 3 2 1)) ; #t
(ordenada '()) ; #t
(ordenada '(1 2 3 2 1)) ; #f
(newline)
;2. Función (intercalar n L)
;Inserta el valor “n” entre todos los valores de la lista “L”
;Ejemplo de salida:
;(intercalada 0 ‘(1 2 3 4 5)) → (1 0 2 0 3 0 4 0 5)

(define (intercalada x lista)
  (if (empty? lista)
      '()
      (cons (car lista) (cons x (intercalada x (cdr lista)))) ;mirar bien este orden porque si el cons se pone en el primero , se hace pero con pares 
      )
  )
(intercalada 0 '(1 2 3 4 5))
(newline)
;3. Función (eliminarMenores n L)
;Elimina todos los valores menores a “n” que se encuentren en la lista “L”.
;Ejemplo de salida:
;(eliminarMenores 10 (15 8 10 11 9 22 -12 40)) → (15 11 22 40)

(define (eliminarMenores x lista)
  (cond
    [(empty? lista) '()]
    [(<= (car lista) x) (eliminarMenores x (cdr lista))]
    [else (cons (car lista) (eliminarMenores x (cdr lista)))]
   )
  )
(eliminarMenores 10 '(15 8 10 11 9 22 -12 40))
(newline)
;4. Función (contador n L)
;Devuelve la cantidad de veces que aparece el valor “n” en la lista “L”.
;Ejemplo de salida:
;(contador 5 '(11 5 12 5 32 0 5 99 105 5)) → 4

(define (contador n lista)
  (cond
    [(empty? lista) 0]
    [(= (car lista) n) (+ 1 (contador n (cdr lista)))]
    [else (contador n (cdr lista))]
    )
  )
(contador 5 '(11 5 12 5 32 0 5 99 105 5))
(newline)
;5. Función (contadorListas L)
;Devuelve el número de listas que tiene “L”.
;Ejemplo de salida:

;6. Función (aplanar L)
;Devuelve la lista plana, sin listas anidadas.
;Ejemplo de salida:
;(aplanar '((1 (2 3) 4) 5 (6)))) → (1 2 3 4 5 6)
(define (aplanar lista)
  (cond
    [(empty? lista) '()]
    [(list? (car lista)) (aplanar (car lista))]
    [else (cons (car lista) (cdr lista))]
    )
  
  )

