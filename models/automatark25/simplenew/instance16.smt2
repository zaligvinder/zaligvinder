(declare-const X String)
; ^([A-Z]+\s*[A-Z]+)$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.+ (re.range "A" "Z")) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.range "A" "Z"))))))
(check-sat)
