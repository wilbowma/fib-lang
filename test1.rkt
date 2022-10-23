#lang s-exp "fib-lang.rkt"
(require rackunit (only-in racket values thunk [#%datum racket-numeral]))

(check-equal? 0 (racket-numeral . 0))
(check-equal? 1 (racket-numeral . 1))
(check-equal? 2 (racket-numeral . 1))
(check-equal? 3 (racket-numeral . 2))
(check-equal? 4 (racket-numeral . 3))
(check-equal? 5 (racket-numeral . 5))
(check-equal? 6 (racket-numeral . 8))
(check-equal? 7 (racket-numeral . 13))
(check-exn values (thunk -1))
