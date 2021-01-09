(declare-const X String)
; Send=\s+User-Agent\x3A\d+Host\x3A\x2Fproducts\x2Fspyblocs\x2Fbacktrust\x2Ecomv\x2ELoginHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Send=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "Host:/products/spyblocs/\x13backtrust.comv.LoginHost:\x0a")))))
; corep\x2Edmcast\x2Ecom[^\n\r]*Referer\x3a.*is[^\n\r]*KeyloggerExplorerfileserverSI\|Server\|www\x2Emyarmory\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "corep.dmcast.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Referer:") (re.* re.allchar) (str.to.re "is") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "KeyloggerExplorerfileserverSI|Server|\x13www.myarmory.com\x0a")))))
; \x3Clogs\x40dummyserver\x2Ecom\x3E
(assert (str.in.re X (str.to.re "<logs@dummyserver.com>\x0a")))
(check-sat)
