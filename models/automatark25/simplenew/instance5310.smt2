(declare-const X String)
; /new (java|org)/Ui
(assert (str.in.re X (re.++ (str.to.re "/new ") (re.union (str.to.re "java") (str.to.re "org")) (str.to.re "/Ui\x0a"))))
(check-sat)
