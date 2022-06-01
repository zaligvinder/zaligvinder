(declare-const X String)
; 9[0-9]
(assert (str.in_re X (re.++ (str.to_re "9") (re.range "0" "9") (str.to_re "\u{a}"))))
(check-sat)
