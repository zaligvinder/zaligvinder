(declare-const X String)
; (a|b|c).(a.b)*.b+.c
(assert (str.in.re X (re.++ (re.union (str.to.re "a") (str.to.re "b") (str.to.re "c")) re.allchar (re.* (re.++ (str.to.re "a") re.allchar (str.to.re "b"))) re.allchar (re.+ (str.to.re "b")) re.allchar (str.to.re "c\x0a"))))
(check-sat)
