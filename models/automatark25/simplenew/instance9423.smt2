(declare-const X String)
; ^([^S]|S[^E]|SE[^P]).*
(assert (not (str.in_re X (re.++ (re.union (re.comp (str.to_re "S")) (re.++ (str.to_re "S") (re.comp (str.to_re "E"))) (re.++ (str.to_re "SE") (re.comp (str.to_re "P")))) (re.* re.allchar) (str.to_re "\u{a}")))))
(check-sat)
