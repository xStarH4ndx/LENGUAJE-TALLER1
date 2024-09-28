#lang racket

;PROBLEMA 1: Determinar si una lista está ordenada

;orden ascendente
(define (ascendente lista)
  (cond
    [(or (empty? lista) (empty? (cdr lista))) #t]
    [(<= (car lista) (car (cdr lista))) (ascendente (cdr lista))] ;recursivo en ascendente
    [else #f]))

;orden descendente
(define (descendente lista)
  (cond
    [(or (empty? lista) (empty? (cdr lista))) #t]
    [(>= (car lista) (car (cdr lista))) (descendente (cdr lista))] ;recursivo en descendente         
    [else #f]))                                    

;Primero identifico si es orden ascendente o descendente
(define (estaOrdenada lista)
  (cond
    [(or (empty? lista) (empty? (cdr lista))) #t] ;si la lista esta vacia o tiene un elemento, esta ordenada
    [(<= (car lista) (car (cdr lista))) (ascendente lista)] ;que el ascendente se ocupe de respetar eso
    [(>= (car lista) (car (cdr lista))) (descendente lista)] ;que el descendente se ocupe de respetar eso
    [else #f])) ;si niguna es true, no esta ordenada o todos los valores son iguales

; Pruebas
(displayln (estaOrdenada '(1 2 3 4))) ;#t - ascendente
(displayln (estaOrdenada '(4 3 2 1))) ;#t - descendente
(displayln (estaOrdenada '(1 3 2 4))) ;#f - no ordenada
(displayln (estaOrdenada '(1 2 2 2))) ;#t - ascendente

