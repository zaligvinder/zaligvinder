(declare-const X String)
; ProSpywww\x2Eemp3finder\x2Ecomwww
(assert (not (str.in.re X (str.to.re "ProSpywww.emp3finder.comwww\x0a"))))
(check-sat)
