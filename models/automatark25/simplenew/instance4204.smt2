(declare-const X String)
; (^[1-9]$)|(^10$)
(assert (not (str.in_re X (re.union (re.range "1" "9") (str.to_re "10\u{a}")))))
(check-sat)
