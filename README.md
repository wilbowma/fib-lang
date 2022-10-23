# fib-lang

fib-lang is an efficient DSL for computing fibonacci numbers.

Natural number literals in fib lang files are statically compiled to their fibonacci number for optimal performance, while fibonacci numbers of complex expressions are computed dynamically.

To launch a fib-lang REPL, run `racket -i -n -t fib-lang.rkt` and type a natural number.
