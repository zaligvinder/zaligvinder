(declare-const X String)
; ApofisAgentFunWebProductsUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "ApofisAgentFunWebProductsUser-Agent:\u{a}")))
; 3ASoftwarephpinfoSpy\u{2E}nbdMailerX-Mailer\u{3A}195\.225\.Subject\u{3a}
(assert (not (str.in_re X (str.to_re "3ASoftwarephpinfoSpy.nbdMailerX-Mailer:\u{13}195.225.Subject:\u{a}"))))
(check-sat)
