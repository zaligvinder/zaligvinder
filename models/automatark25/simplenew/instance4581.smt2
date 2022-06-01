(declare-const X String)
; /"(\\["\\]|[^"])*("|$)|(\\["\\]|[^\s"])+/g
(assert (not (str.in_re X (re.union (re.++ (str.to_re "/\u{22}") (re.* (re.union (re.++ (str.to_re "\u{5c}") (re.union (str.to_re "\u{22}") (str.to_re "\u{5c}"))) (re.comp (str.to_re "\u{22}")))) (str.to_re "\u{22}")) (re.++ (re.+ (re.union (re.++ (str.to_re "\u{5c}") (re.union (str.to_re "\u{22}") (str.to_re "\u{5c}"))) (str.to_re "\u{22}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/g\u{a}"))))))
(check-sat)
