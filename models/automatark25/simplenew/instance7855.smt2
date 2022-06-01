(declare-const X String)
; ("((\\.)|[^\\"])*")
(assert (str.in_re X (re.++ (str.to_re "\u{a}\u{22}") (re.* (re.union (re.++ (str.to_re "\u{5c}") re.allchar) (str.to_re "\u{5c}") (str.to_re "\u{22}"))) (str.to_re "\u{22}"))))
(check-sat)
