(declare-const X String)
; findX-Mailer\u{3a}User-Agent\u{3A}www\.take5bingo\.comX-Mailer\u{3a}\u{4}\u{0}
(assert (str.in_re X (str.to_re "findX-Mailer:\u{13}User-Agent:www.take5bingo.com\u{1b}X-Mailer:\u{13}\u{4}\u{0}\u{a}")))
(check-sat)
