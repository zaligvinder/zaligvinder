(declare-const X String)
; ^([A-HJ-TP-Z]{1}\d{4}[A-Z]{3}|[a-z]{1}\d{4}[a-hj-tp-z]{3})$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.union (re.range "A" "H") (re.range "J" "T") (re.range "P" "Z"))) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 3 3) (re.range "A" "Z"))) (re.++ ((_ re.loop 1 1) (re.range "a" "z")) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 3 3) (re.union (re.range "a" "h") (re.range "j" "t") (re.range "p" "z"))))) (str.to.re "\x0a")))))
(check-sat)
