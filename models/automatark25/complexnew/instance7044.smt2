(declare-const X String)
; [\s0-9a-zA-Z\;\"\,\<\>\\?\+\=\)\(\\*\&\%\\$\#\.]*
(assert (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to_re ";") (str.to_re "\u{22}") (str.to_re ",") (str.to_re "<") (str.to_re ">") (str.to_re "\u{5c}") (str.to_re "?") (str.to_re "+") (str.to_re "=") (str.to_re ")") (str.to_re "(") (str.to_re "*") (str.to_re "&") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re ".") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; ^0[1-9]\d{7,8}$
(assert (str.in_re X (re.++ (str.to_re "0") (re.range "1" "9") ((_ re.loop 7 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
