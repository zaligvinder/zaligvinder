(declare-const X String)
; /^[a-z]{5}\d=_\d_/C
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 5 5) (re.range "a" "z")) (re.range "0" "9") (str.to.re "=_") (re.range "0" "9") (str.to.re "_/C\x0a"))))
(check-sat)
