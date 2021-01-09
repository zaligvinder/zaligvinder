(declare-const X String)
; metaresults\.copernic\.comServer\x00
(assert (not (str.in.re X (str.to.re "metaresults.copernic.comServer\x00\x0a"))))
(check-sat)
