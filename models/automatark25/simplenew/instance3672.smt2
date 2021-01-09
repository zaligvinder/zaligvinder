(declare-const X String)
; ^(\d{4}[- ]){3}\d{4}|\d{16}$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 16 16) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
