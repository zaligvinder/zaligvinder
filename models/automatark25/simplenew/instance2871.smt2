(declare-const X String)
; /\?action=\w+gen&v=\d+/U
(assert (not (str.in_re X (re.++ (str.to_re "/?action=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gen&v=") (re.+ (re.range "0" "9")) (str.to_re "/U\u{a}")))))
(check-sat)
