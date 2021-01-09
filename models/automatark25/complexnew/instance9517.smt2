(declare-const X String)
; www\x2Eonetoolbar\x2Ecomcommunity
(assert (not (str.in.re X (str.to.re "www.onetoolbar.comcommunity\x0a"))))
; User-Agent\x3AHost\x3AhasHost\x3AComputerKeylogger\x2Ecom
(assert (str.in.re X (str.to.re "User-Agent:Host:hasHost:ComputerKeylogger.com\x0a")))
; /\x2eclass([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.class") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
