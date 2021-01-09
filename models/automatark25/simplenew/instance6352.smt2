(declare-const X String)
; /\/flash201(3|4)\.php$/U
(assert (str.in.re X (re.++ (str.to.re "//flash201") (re.union (str.to.re "3") (str.to.re "4")) (str.to.re ".php/U\x0a"))))
(check-sat)
