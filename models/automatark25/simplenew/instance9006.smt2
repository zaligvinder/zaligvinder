(declare-const X String)
; PortweatherX-Mailer\x3aUser-Agent\x3AToolbar
(assert (not (str.in.re X (str.to.re "PortweatherX-Mailer:\x13User-Agent:Toolbar\x0a"))))
(check-sat)
