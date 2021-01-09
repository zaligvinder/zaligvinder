(declare-const X String)
; vb\s+Host\x3ASubject\x3Aonline-casino-searcher\.com
(assert (not (str.in.re X (re.++ (str.to.re "vb") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Subject:online-casino-searcher.com\x0a")))))
; /[^\x20-\x7e\x0d\x0a]{4}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (re.range " " "~") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/P\x0a")))))
(check-sat)
