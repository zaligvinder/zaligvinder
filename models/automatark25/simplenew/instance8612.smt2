(declare-const X String)
; fsbuffshprrprt-cs-Host\x3A
(assert (not (str.in.re X (str.to.re "fsbuffshprrprt-cs-\x13Host:\x0a"))))
(check-sat)
