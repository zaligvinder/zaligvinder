(declare-const X String)
; ^DOMAIN\\\w+$
(assert (not (str.in_re X (re.++ (str.to_re "DOMAIN\u{5c}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}")))))
(check-sat)
