(declare-const X String)
; X-Mailer\x3aReferer\x3Asponsor2\.ucmore\.com
(assert (not (str.in.re X (str.to.re "X-Mailer:\x13Referer:sponsor2.ucmore.com\x0a"))))
(check-sat)
