(declare-const X String)
; /\x2empg([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mpg") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; \x7D\x7BPort\x3AHost\x3Amqnqgijmng\x2fojNavhelperUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "}{Port:Host:mqnqgijmng/ojNavhelperUser-Agent:\x0a"))))
; A-311[^\n\r]*Attached\sHost\x3AWordmyway\.comhoroscope2
(assert (not (str.in.re X (re.++ (str.to.re "A-311") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Attached") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:Wordmyway.comhoroscope2\x0a")))))
; Referer\x3A\s+www\x2eproventactics\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "Referer:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.proventactics.com\x0a")))))
(check-sat)
