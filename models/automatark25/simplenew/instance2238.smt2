(declare-const X String)
; /setup=[a-z]$/Ui
(assert (str.in.re X (re.++ (str.to.re "/setup=") (re.range "a" "z") (str.to.re "/Ui\x0a"))))
(check-sat)
