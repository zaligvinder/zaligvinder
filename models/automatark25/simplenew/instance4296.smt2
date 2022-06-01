(declare-const X String)
; HXLogOnly\w+Host\u{3A}spasHost\u{3A}
(assert (str.in_re X (re.++ (str.to_re "HXLogOnly") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:spasHost:\u{a}"))))
(check-sat)
