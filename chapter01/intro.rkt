#lang sicp

5

; 基本操作符
(+ 10 13)

(*(+ 2(* 4 6))(+ 3 5 7))

#|
最好格式化成这种：
(*(+ 2
    (* 4 6))
  (+ 3 5 7)
)

|#

; 定义变量
(define size 5)
size

(define area (* size 10))
area

; 定义过程，求平方
(define (square x) (* x x))
; 使用过程
(square 10)
; 使用过程定义过程
(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 3 4)

;;;;;;;;; 条件判断
(define (abs x)
  (cond ((> x 0) x)
        ((< x 0) (- x))
        ((= x 0) 0)))
; 这种方式可以理解成三目运算符
(define (absif x)
  (if (< x 0)
      (- x)
      x))

(abs -10)
(absif -99)

; 定义>=
(define (>= x y)
  (or (> x y)(= x y)))

(>= 100 20)
