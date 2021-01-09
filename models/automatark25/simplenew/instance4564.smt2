(declare-const X String)
; ^[A-Z0-9\\-\\&-]{5,12}$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 12) (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "\x5c" "\x5c") (str.to.re "&") (str.to.re "-"))) (str.to.re "\x0a")))))
(check-sat)
