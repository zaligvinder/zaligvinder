(declare-const X String)
; offers\x2Ebullseye-network\x2Ecom\s+news[^\n\r]*WatcherUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "offers.bullseye-network.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "news") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "WatcherUser-Agent:\x0a"))))
(check-sat)
