(declare-const X String)
; ^[12345]$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2efdf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".fdf/i\x0a"))))
(check-sat)
