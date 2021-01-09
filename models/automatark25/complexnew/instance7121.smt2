(declare-const X String)
; areHost\x3Ae2give\.comHost\x3aX-Mailer\x3AsportsHost\x3AToolbar
(assert (not (str.in.re X (str.to.re "areHost:e2give.comHost:X-Mailer:\x13sportsHost:Toolbar\x0a"))))
; \stoolbar\.anwb\.nl\s+A-311.*Host\x3aHost\x3Ayddznydqir\x2fevi
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nl") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "A-311") (re.* re.allchar) (str.to.re "Host:Host:yddznydqir/evi\x0a"))))
(check-sat)
