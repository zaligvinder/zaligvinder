(declare-const X String)
; ^([0-9A-F]{2}[:-]){5}([0-9A-F]{2})$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.union (str.to.re ":") (str.to.re "-")))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "\x0a")))))
(check-sat)
