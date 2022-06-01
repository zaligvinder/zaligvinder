(declare-const X String)
; target[ ]*[=]([ ]*)(["]|['])*([_])*([A-Za-z0-9])+(["])*
(assert (not (str.in_re X (re.++ (str.to_re "target") (re.* (str.to_re " ")) (str.to_re "=") (re.* (str.to_re " ")) (re.* (re.union (str.to_re "\u{22}") (str.to_re "'"))) (re.* (str.to_re "_")) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (re.* (str.to_re "\u{22}")) (str.to_re "\u{a}")))))
(check-sat)
