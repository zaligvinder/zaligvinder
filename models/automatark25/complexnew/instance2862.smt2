(declare-const X String)
; ^(|(0\d)|(1[0-2])):(([0-5]\d)):(([0-5]\d))\s([AP]M)$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "::") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "\u{a}") (re.range "0" "5") (re.range "0" "9") (re.range "0" "5") (re.range "0" "9") (re.union (str.to_re "A") (str.to_re "P")) (str.to_re "M"))))
; iepluginBrowsedOVNHost\u{3A}\u{2F}products\u{2F}spyblocs\u{2F}
(assert (not (str.in_re X (str.to_re "iepluginBrowsedOVNHost:/products/spyblocs/\u{13}\u{a}"))))
; ^[\w]{1,}$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}")))))
(check-sat)
