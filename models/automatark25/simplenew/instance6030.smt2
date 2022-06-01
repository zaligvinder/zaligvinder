(declare-const X String)
; areHost\u{3A}e2give\.comHost\u{3a}X-Mailer\u{3A}sportsHost\u{3A}Toolbar
(assert (str.in_re X (str.to_re "areHost:e2give.comHost:X-Mailer:\u{13}sportsHost:Toolbar\u{a}")))
(check-sat)
