(declare-const X String)
; ^[A-z]?\d{8}[A-z]$
(assert (str.in.re X (re.++ (re.opt (re.range "A" "z")) ((_ re.loop 8 8) (re.range "0" "9")) (re.range "A" "z") (str.to.re "\x0a"))))
(check-sat)
