(declare-const X String)
; /^\x2f[A-Za-z0-9]{33}\?s=\d\&m=\d$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 33 33) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "?s=") (re.range "0" "9") (str.to.re "&m=") (re.range "0" "9") (str.to.re "/U\x0a")))))
(check-sat)
