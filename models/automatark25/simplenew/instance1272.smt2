(declare-const X String)
; ^[^<>&~\s^%A-Za-z\\][^A-Za-z%^\\<>]{1,25}$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "<") (str.to_re ">") (str.to_re "&") (str.to_re "~") (str.to_re "^") (str.to_re "%") (re.range "A" "Z") (re.range "a" "z") (str.to_re "\u{5c}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) ((_ re.loop 1 25) (re.union (re.range "A" "Z") (re.range "a" "z") (str.to_re "%") (str.to_re "^") (str.to_re "\u{5c}") (str.to_re "<") (str.to_re ">"))) (str.to_re "\u{a}")))))
(check-sat)
