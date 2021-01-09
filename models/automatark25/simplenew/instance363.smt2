(declare-const X String)
; Subject\x3ALOGX-Mailer\x3a
(assert (not (str.in.re X (str.to.re "Subject:LOGX-Mailer:\x13\x0a"))))
(check-sat)
