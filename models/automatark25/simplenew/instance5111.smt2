(declare-const X String)
; User-Agent\x3AX-Mailer\x3aHost\x3Adcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (str.to.re "User-Agent:X-Mailer:\x13Host:dcww.dmcast.com\x0a"))))
(check-sat)
