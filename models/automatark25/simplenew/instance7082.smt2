(declare-const X String)
; User-Agent\x3AWeb-Mail
(assert (not (str.in.re X (str.to.re "User-Agent:Web-Mail\x0a"))))
(check-sat)
