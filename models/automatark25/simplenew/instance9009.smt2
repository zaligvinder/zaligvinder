(declare-const X String)
; findX-Mailer\x3aUser-Agent\x3Awww\.take5bingo\.comX-Mailer\x3a\x04\x00
(assert (str.in.re X (str.to.re "findX-Mailer:\x13User-Agent:www.take5bingo.com\x1bX-Mailer:\x13\x04\x00\x0a")))
(check-sat)
