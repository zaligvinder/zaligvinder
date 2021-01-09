(declare-const X String)
; WindowsAcmeReferer\x3A
(assert (str.in.re X (str.to.re "WindowsAcmeReferer:\x0a")))
(check-sat)
