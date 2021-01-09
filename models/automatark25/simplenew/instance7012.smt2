(declare-const X String)
; ^\d$|^[1][0]$
(assert (not (str.in.re X (re.union (re.range "0" "9") (str.to.re "10\x0a")))))
(check-sat)
