(declare-const X String)
; 3ASoftwarephpinfoSpy\x2EnbdMailerX-Mailer\x3A195\.225\.Subject\x3a
(assert (str.in.re X (str.to.re "3ASoftwarephpinfoSpy.nbdMailerX-Mailer:\x13195.225.Subject:\x0a")))
(check-sat)
