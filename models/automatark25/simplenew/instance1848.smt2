(declare-const X String)
; ^[1-5]$
(assert (not (str.in.re X (re.++ (re.range "1" "5") (str.to.re "\x0a")))))
(check-sat)
