(declare-const X String)
; ApofisAgentFunWebProductsUser-Agent\x3A
(assert (str.in.re X (str.to.re "ApofisAgentFunWebProductsUser-Agent:\x0a")))
; 3ASoftwarephpinfoSpy\x2EnbdMailerX-Mailer\x3A195\.225\.Subject\x3a
(assert (not (str.in.re X (str.to.re "3ASoftwarephpinfoSpy.nbdMailerX-Mailer:\x13195.225.Subject:\x0a"))))
(check-sat)
