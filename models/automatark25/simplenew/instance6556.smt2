(declare-const X String)
; /\/setup\/[a-z0-9!-]{50}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//setup/") ((_ re.loop 50 50) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "!") (str.to.re "-"))) (str.to.re "/Ui\x0a")))))
(check-sat)
