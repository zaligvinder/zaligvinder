(declare-const X String)
; (^[1-9]$)|(^10$)
(assert (not (str.in.re X (re.union (re.range "1" "9") (str.to.re "10\x0a")))))
(check-sat)
