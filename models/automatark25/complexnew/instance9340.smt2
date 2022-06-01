(declare-const X String)
; @"^\d[a-zA-Z0-9]+$"
(assert (not (str.in_re X (re.++ (str.to_re "@\u{22}") (re.range "0" "9") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{22}\u{a}")))))
; /\.png$/Ui
(assert (str.in_re X (str.to_re "/.png/Ui\u{a}")))
(check-sat)
