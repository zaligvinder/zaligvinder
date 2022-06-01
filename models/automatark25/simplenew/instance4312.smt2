(declare-const X String)
; \{CHBLOCK\:(.*?\})
(assert (not (str.in_re X (re.++ (str.to_re "{CHBLOCK:\u{a}") (re.* re.allchar) (str.to_re "}")))))
(check-sat)
