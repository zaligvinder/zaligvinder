(declare-const X String)
; \.bmp[^\n\r]*couponbar\.coupons\.com.*Host\u{3A}Host\u{3a}HTTPwww
(assert (not (str.in_re X (re.++ (str.to_re ".bmp") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "couponbar.coupons.com") (re.* re.allchar) (str.to_re "Host:Host:HTTPwww\u{a}")))))
; com\u{2F}index\.php\?tpid=onspyblpatUser-Agent\u{3A}Surveillance
(assert (str.in_re X (str.to_re "com/index.php?tpid=onspyblpatUser-Agent:Surveillance\u{13}\u{a}")))
; ^[a-zA-Z0-9!@#$&_]+$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "!") (str.to_re "@") (str.to_re "#") (str.to_re "$") (str.to_re "&") (str.to_re "_"))) (str.to_re "\u{a}"))))
; NetTracker.*Theef2[^\n\r]*versionA-311Subject\u{3a}www\u{2E}pcsentinelsoftware\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "NetTracker") (re.* re.allchar) (str.to_re "Theef2") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "versionA-311Subject:www.pcsentinelsoftware.com\u{a}"))))
(check-sat)
