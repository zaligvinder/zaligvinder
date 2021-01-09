(declare-const X String)
; from\x3AHost\x3awww\.thecommunicator\.net
(assert (str.in.re X (str.to.re "from:Host:www.thecommunicator.net\x0a")))
; ^([a-zA-z\s]{2,})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "z") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (re.range "a" "z") (re.range "A" "z") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
; ^([0][1-9]|[1][0-2]):[0-5][0-9] {1}(AM|PM|am|pm)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") ((_ re.loop 1 1) (str.to.re " ")) (re.union (str.to.re "AM") (str.to.re "PM") (str.to.re "am") (str.to.re "pm")) (str.to.re "\x0a")))))
; ProxyDownCurrentUser-Agent\x3AHost\x3Acom\x2Findex\.php\?tpid=
(assert (not (str.in.re X (str.to.re "ProxyDownCurrentUser-Agent:Host:com/index.php?tpid=\x0a"))))
; ^(www\.regxlib\.com)$
(assert (str.in.re X (str.to.re "www.regxlib.com\x0a")))
(check-sat)
