(declare-const X String)
; /filename=[^\n]*\x2epict/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pict/i\x0a"))))
; encoder\s%3fsearchresltX-Mailer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "encoder") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "%3fsearchresltX-Mailer:\x13\x0a")))))
; Serverulmxct\x2fmqoycWinSession\x2Fclient\x2F\x2APORT1\x2A
(assert (str.in.re X (str.to.re "Serverulmxct/mqoycWinSession/client/*PORT1*\x0a")))
(check-sat)
