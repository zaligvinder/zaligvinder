(declare-const X String)
; HANDYHost\x3aHost\x3aHost\x3Ayddznydqir\x2feviGatornewsSoftActivity
(assert (not (str.in.re X (str.to.re "HANDYHost:Host:Host:yddznydqir/eviGatornewsSoftActivity\x13\x0a"))))
; /^[014567d]-/R
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "d")) (str.to.re "-/R\x0a"))))
(check-sat)
