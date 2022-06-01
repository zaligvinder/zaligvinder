(declare-const X String)
; cdpnode=\w+Authorization\u{3a}name\u{2e}cnnic\u{2e}cn
(assert (not (str.in_re X (re.++ (str.to_re "cdpnode=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Authorization:name.cnnic.cn\u{a}")))))
(check-sat)
