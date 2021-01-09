(declare-const X String)
; /\x2fib2\x2f$/U
(assert (str.in.re X (str.to.re "//ib2//U\x0a")))
(check-sat)
