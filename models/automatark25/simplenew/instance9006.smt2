(declare-const X String)
; PortweatherX-Mailer\u{3a}User-Agent\u{3A}Toolbar
(assert (not (str.in_re X (str.to_re "PortweatherX-Mailer:\u{13}User-Agent:Toolbar\u{a}"))))
(check-sat)
