(declare-const X String)
; ^([^S]|S[^E]|SE[^P]).*
(assert (not (str.in.re X (re.++ (re.union (re.comp (str.to.re "S")) (re.++ (str.to.re "S") (re.comp (str.to.re "E"))) (re.++ (str.to.re "SE") (re.comp (str.to.re "P")))) (re.* re.allchar) (str.to.re "\x0a")))))
; Yeah\!Host\x3AEnTrYwww\x2EZSearchResults\x2Ecom
(assert (str.in.re X (str.to.re "Yeah!Host:EnTrYwww.ZSearchResults.com\x13\x0a")))
(check-sat)
