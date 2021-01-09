(declare-const X String)
; /\/java(rh|db)\.php$/U
(assert (str.in.re X (re.++ (str.to.re "//java") (re.union (str.to.re "rh") (str.to.re "db")) (str.to.re ".php/U\x0a"))))
(check-sat)
