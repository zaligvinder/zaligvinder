(declare-const X String)
; \u{5D}\u{25}20\u{5B}Port_X-Mailer\u{3A}X-Mailer\u{3a}www\.actualnames\.comwebsearch\.getmirar\.com
(assert (not (str.in_re X (str.to_re "]%20[Port_X-Mailer:\u{13}X-Mailer:\u{13}www.actualnames.comwebsearch.getmirar.com\u{a}"))))
(check-sat)
