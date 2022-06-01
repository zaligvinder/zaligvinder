(declare-const X String)
; /^[1-9][0-9][0-9][0-9][0-9][0-9]$/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.range "1" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (str.to_re "/\u{a}")))))
(check-sat)
