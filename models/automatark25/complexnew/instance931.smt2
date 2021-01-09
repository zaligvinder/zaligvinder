(declare-const X String)
; Host\x3APortawww\.thecommunicator\.net
(assert (str.in.re X (str.to.re "Host:Portawww.thecommunicator.net\x0a")))
; Host\x3A\s+www\x2Einternet-optimizer\x2EcomToolBarKeylogger
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.internet-optimizer.comToolBarKeylogger\x0a")))))
(check-sat)
