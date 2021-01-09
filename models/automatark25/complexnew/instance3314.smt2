(declare-const X String)
; www\x2Epurityscan\x2Ecom.*
(assert (not (str.in.re X (re.++ (str.to.re "www.purityscan.com") (re.* re.allchar) (str.to.re "\x0a")))))
; Kontikidownloadfile\x2eorged2kcom\x3EHost\x3AWindows
(assert (str.in.re X (str.to.re "Kontikidownloadfile.orged2kcom>Host:Windows\x0a")))
; Host\x3A.*c=[^\n\r]*KeyloggerHost\x3Awww\.trackhits\.cc
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* re.allchar) (str.to.re "c=") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "KeyloggerHost:www.trackhits.cc\x0a"))))
(check-sat)
