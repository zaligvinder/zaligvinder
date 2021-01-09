(declare-const X String)
; update\.cgilogstoHost\x3A
(assert (str.in.re X (str.to.re "update.cgilogstoHost:\x0a")))
(check-sat)
