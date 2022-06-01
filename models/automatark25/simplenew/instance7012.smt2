(declare-const X String)
; ^\d$|^[1][0]$
(assert (not (str.in_re X (re.union (re.range "0" "9") (str.to_re "10\u{a}")))))
(check-sat)
