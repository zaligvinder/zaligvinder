(declare-const X String)
; TPSystemad\x2Esearchsquire\x2Ecomv\x2EHost\x3Ahotbar
(assert (not (str.in.re X (str.to.re "TPSystemad.searchsquire.comv.Host:hotbar\x0a"))))
; /\x2emswmm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mswmm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
