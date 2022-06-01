(declare-const X String)
; Host\u{3A}\w+Toolbar\d+anHost\u{3A}spasHost\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Toolbar") (re.+ (re.range "0" "9")) (str.to_re "anHost:spasHost:\u{a}")))))
(check-sat)
