(declare-const X String)
; http://www.mail-password-recovery.com/
(assert (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "mail-password-recovery") re.allchar (str.to.re "com/\x0a"))))
(check-sat)
