(declare-const X String)
; fhfksjzsfu\x2fahm\.uqs\s+Host\x3a\swww\.fast-finder\.com\sStarted\!$3
(assert (str.in.re X (re.++ (str.to.re "fhfksjzsfu/ahm.uqs") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Started!3\x0a"))))
; eveocczmthmmq\x2fomzlHello\x2E\x2Fasp\x2Foffers\.asp\?
(assert (not (str.in.re X (str.to.re "eveocczmthmmq/omzlHello./asp/offers.asp?\x0a"))))
; ^[ a - z, 0 - 9 , ?   -   ?   ,?   -   ? , ?    -  ?   ,?   -  ? , . ]
(assert (not (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "a") (re.range " " " ") (str.to.re "z") (str.to.re ",") (str.to.re "0") (str.to.re "9") (str.to.re "?") (str.to.re ".")) (str.to.re "\x0a")))))
; name\x2ecnnic\x2ecn\scom\x2Findex\.php\?tpid=\s\x5BStatic.*\x2Fbar_pl\x2Fb\.fcgi
(assert (not (str.in.re X (re.++ (str.to.re "name.cnnic.cn") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "com/index.php?tpid=") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "[Static") (re.* re.allchar) (str.to.re "/bar_pl/b.fcgi\x0a")))))
(check-sat)
