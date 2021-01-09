(declare-const X String)
; \.bmp[^\n\r]*couponbar\.coupons\.com.*Host\x3AHost\x3aHTTPwww
(assert (not (str.in.re X (re.++ (str.to.re ".bmp") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "couponbar.coupons.com") (re.* re.allchar) (str.to.re "Host:Host:HTTPwww\x0a")))))
; com\x2Findex\.php\?tpid=onspyblpatUser-Agent\x3ASurveillance
(assert (str.in.re X (str.to.re "com/index.php?tpid=onspyblpatUser-Agent:Surveillance\x13\x0a")))
; ^[a-zA-Z0-9!@#$&_]+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "$") (str.to.re "&") (str.to.re "_"))) (str.to.re "\x0a"))))
; NetTracker.*Theef2[^\n\r]*versionA-311Subject\x3awww\x2Epcsentinelsoftware\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "NetTracker") (re.* re.allchar) (str.to.re "Theef2") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "versionA-311Subject:www.pcsentinelsoftware.com\x0a"))))
(check-sat)
