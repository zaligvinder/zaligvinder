(declare-const X String)
; ^[A-Z]{3}(\d|[A-Z]){8,12}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) ((_ re.loop 8 12) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to.re "\x0a")))))
(check-sat)
