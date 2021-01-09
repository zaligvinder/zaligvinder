(declare-const X String)
; \{CHBLOCK\:(.*?\})
(assert (not (str.in.re X (re.++ (str.to.re "{CHBLOCK:\x0a") (re.* re.allchar) (str.to.re "}")))))
(check-sat)
