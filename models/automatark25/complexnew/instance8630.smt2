(declare-const X String)
; ^( [1-9]|[1-9]|0[1-9]|10|11|12)[0-5]\d$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re " ") (re.range "1" "9")) (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (str.to.re "10") (str.to.re "11") (str.to.re "12")) (re.range "0" "5") (re.range "0" "9") (str.to.re "\x0a")))))
; www\x2Ezhongsou\x2Ecom\sisHost\x3Aare
(assert (not (str.in.re X (re.++ (str.to.re "www.zhongsou.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "isHost:are\x0a")))))
; www\x2Ecameup\x2Ecom\s+spyblini\x2Eini
(assert (not (str.in.re X (re.++ (str.to.re "www.cameup.com\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblini.ini\x0a")))))
; software.*com\x2Findex\.php\?tpid=\s+Host\x3A\x2Ftoolbar\x2Fsupremetb
(assert (str.in.re X (re.++ (str.to.re "software") (re.* re.allchar) (str.to.re "com/index.php?tpid=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:/toolbar/supremetb\x0a"))))
(check-sat)
