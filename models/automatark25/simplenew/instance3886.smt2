(declare-const X String)
; ^[a-z\.]*\s?([a-z\-\']+\s)+[a-z\-\']+$
(assert (not (str.in_re X (re.++ (re.* (re.union (re.range "a" "z") (str.to_re "."))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (str.to_re "-") (str.to_re "'"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (re.+ (re.union (re.range "a" "z") (str.to_re "-") (str.to_re "'"))) (str.to_re "\u{a}")))))
(check-sat)
