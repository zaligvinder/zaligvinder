(declare-const X String)
; /\?action=\w+gen&v=\d+/U
(assert (not (str.in.re X (re.++ (str.to.re "/?action=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gen&v=") (re.+ (re.range "0" "9")) (str.to.re "/U\x0a")))))
(check-sat)
