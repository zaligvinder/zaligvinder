(declare-const X String)
; IDENTIFY.*\x2Fezsb\d+X-Mailer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "IDENTIFY") (re.* re.allchar) (str.to.re "/ezsb") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13\x0a")))))
(check-sat)
