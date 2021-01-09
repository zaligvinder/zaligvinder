(declare-const X String)
; /^[014567d]-/R
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "d")) (str.to.re "-/R\x0a"))))
(check-sat)
