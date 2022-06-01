(declare-const X String)
; ^([0-9][0-9])[.]([0-9][0-9])[.]([0-9][0-9])$
(assert (not (str.in_re X (re.++ (str.to_re "..\u{a}") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))))
(check-sat)
