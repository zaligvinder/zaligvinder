(declare-const X String)
; ^([\w\-\.]+)\s.*$
(assert (str.in_re X (re.++ (re.+ (re.union (str.to_re "-") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (re.* re.allchar) (str.to_re "\u{a}"))))
(check-sat)
