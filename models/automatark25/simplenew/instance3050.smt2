(declare-const X String)
; (\+1|\+|1)|([^0-9])
(assert (not (str.in.re X (re.union (re.++ (re.range "0" "9") (str.to.re "\x0a")) (str.to.re "+1") (str.to.re "+") (str.to.re "1")))))
(check-sat)
