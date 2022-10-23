#lang racket

;; Hash-lang fib

(require 
  (for-syntax syntax/parse)
  (rename-in racket [#%datum old-datum]))

(provide require only-in #%datum #%module-begin #%top-interaction * +)

(module A racket
  (provide/contract [fib (-> natural-number/c natural-number/c)])
  (define/match (fib n)
    [(0) 0]
    [(1) 1]
    [(n) (+ (fib (sub1 n)) (fib (- n 2)))]))

(require (for-syntax 'A) (rename-in 'A [fib fibr]))

(define-syntax (#%datum stx)
  (syntax-parse stx
    [(_ . n:nat)
     #`(old-datum . #,(fib (syntax->datum #'n)))]
    [(_ . e) #`(fibr (old-datum . e))]))
