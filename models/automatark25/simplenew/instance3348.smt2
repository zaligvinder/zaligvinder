(declare-const X String)
; TPSystemad\x2Esearchsquire\x2Ecomv\x2EHost\x3Ahotbar
(assert (str.in.re X (str.to.re "TPSystemad.searchsquire.comv.Host:hotbar\x0a")))
(check-sat)
