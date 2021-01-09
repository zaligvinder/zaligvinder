(declare-const X String)
; encoder\s%3fsearchresltX-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "encoder") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "%3fsearchresltX-Mailer:\x13\x0a"))))
; /\x2ehlp([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.hlp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^(#){1}([a-fA-F0-9]){6}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "#")) ((_ re.loop 6 6) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
