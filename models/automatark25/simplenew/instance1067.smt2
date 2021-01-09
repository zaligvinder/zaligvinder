(declare-const X String)
; adserver\.warezclient\.com530Host\x3A
(assert (str.in.re X (str.to.re "adserver.warezclient.com530Host:\x0a")))
(check-sat)
