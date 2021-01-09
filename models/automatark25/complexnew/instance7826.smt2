(declare-const X String)
; encoder\s%3fsearchresltX-Mailer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "encoder") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "%3fsearchresltX-Mailer:\x13\x0a")))))
; /\x2exul([\?\x5c\x2f]|$)/Umsi
(assert (not (str.in.re X (re.++ (str.to.re "/.xul") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/Umsi\x0a")))))
; /\x2exlw([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.xlw") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
