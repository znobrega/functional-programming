#lang racket

(define a 42)
(define b 14)

(+ a b)
(- a b)
(+ (+ a (* 3 b) 7))
(/ (+ a b) 2)
(sqrt (* a b))

;media harmonica
(/ 2 (+ ( / 1 a) (/ 1 b)))


(define soma-medias (+ (/ (+ a b) 2) (/ 2 (+ ( / 1 a) (/ 1 b)))))

(if (= soma-medias 49) "teste 1 ok"
                       "teste 1 falhou")

(define (quadrado x) (* x x))


(define (delta a b c)
  (- (quadrado b)
     (* 4 a c)))

(define (raiz-positiva a b c)
  (/ (+(- b) (delta a b c) )
     (* 2 a)))

(define (potencia x e)
  (define (potencia-acc x e acc)
  (if (= e 0) acc
      (potencia-acc x (sub1 e) (* acc x))))
  (potencia-acc x e 1))
  



