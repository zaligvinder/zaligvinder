(declare-const X String)
; ^[A-Z]$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (str.to.re "\x0a")))))
(check-sat)
