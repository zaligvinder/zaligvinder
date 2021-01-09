(declare-const X String)
; User-Agent\x3AServerHost\x3A
(assert (str.in.re X (str.to.re "User-Agent:ServerHost:\x0a")))
; Subject\x3ALOGX-Mailer\x3a
(assert (str.in.re X (str.to.re "Subject:LOGX-Mailer:\x13\x0a")))
(check-sat)
