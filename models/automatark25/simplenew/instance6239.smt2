(declare-const X String)
; /\/java(rh|db)\.php$/U
(assert (not (str.in_re X (re.++ (str.to_re "//java") (re.union (str.to_re "rh") (str.to_re "db")) (str.to_re ".php/U\u{a}")))))
(check-sat)
