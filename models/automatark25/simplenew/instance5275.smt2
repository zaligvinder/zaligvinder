(declare-const X String)
; \.\s|$(\n|\r\n)
(assert (not (str.in_re X (re.union (re.++ (str.to_re ".") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.++ (re.union (str.to_re "\u{a}") (str.to_re "\u{d}\u{a}")) (str.to_re "\u{a}"))))))
(check-sat)
