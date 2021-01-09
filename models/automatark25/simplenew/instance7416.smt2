(declare-const X String)
; X-Mailer\x3a.*User-Agent\x3A[^\n\r]*ulmxct\x2fmqoyc
(assert (not (str.in.re X (re.++ (str.to.re "X-Mailer:\x13") (re.* re.allchar) (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "ulmxct/mqoyc\x0a")))))
(check-sat)
