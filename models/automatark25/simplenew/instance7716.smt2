(declare-const X String)
; NetTracker.*Theef2[^\n\r]*versionA-311Subject\x3awww\x2Epcsentinelsoftware\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "NetTracker") (re.* re.allchar) (str.to.re "Theef2") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "versionA-311Subject:www.pcsentinelsoftware.com\x0a")))))
(check-sat)
