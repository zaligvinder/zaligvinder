(declare-const X String)
; areHost\u{3A}e2give\.comHost\u{3a}X-Mailer\u{3A}sportsHost\u{3A}Toolbar
(assert (not (str.in_re X (str.to_re "areHost:e2give.comHost:X-Mailer:\u{13}sportsHost:Toolbar\u{a}"))))
; \stoolbar\.anwb\.nl\s+A-311.*Host\u{3a}Host\u{3A}yddznydqir\u{2f}evi
(assert (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "toolbar.anwb.nl") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "A-311") (re.* re.allchar) (str.to_re "Host:Host:yddznydqir/evi\u{a}"))))
(check-sat)
