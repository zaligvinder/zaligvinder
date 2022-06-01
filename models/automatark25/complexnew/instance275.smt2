(declare-const X String)
; (\n\r)   replacement string---->\n
(assert (not (str.in_re X (str.to_re "\u{a}\u{d}   replacement string---->\u{a}\u{a}"))))
; /setup=[a-z]$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/setup=") (re.range "a" "z") (str.to_re "/Ui\u{a}")))))
; \u{2F}searchfast\u{2F}\s+Host\u{3A}\s+
(assert (not (str.in_re X (re.++ (str.to_re "/searchfast/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}")))))
(check-sat)
