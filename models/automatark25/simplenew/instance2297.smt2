(declare-const X String)
; /\/flash201(3|4)\.php$/U
(assert (not (str.in_re X (re.++ (str.to_re "//flash201") (re.union (str.to_re "3") (str.to_re "4")) (str.to_re ".php/U\u{a}")))))
(check-sat)
