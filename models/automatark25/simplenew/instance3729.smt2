(declare-const X String)
; ^( [1-9]|[1-9]|0[1-9]|10|11|12)[0-5]\d$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re " ") (re.range "1" "9")) (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (str.to_re "10") (str.to_re "11") (str.to_re "12")) (re.range "0" "5") (re.range "0" "9") (str.to_re "\u{a}")))))
(check-sat)
