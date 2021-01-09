(declare-const X String)
; Spywww\x2Elookquick\x2Ecom
(assert (not (str.in.re X (str.to.re "Spywww.lookquick.com\x0a"))))
(check-sat)
