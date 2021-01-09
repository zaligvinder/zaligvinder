(declare-const X String)
; Host\x3A\s+CD\x2F\s+twfofrfzlugq\x2feve\.qdSeconds\-\x2Ftoolbar\x2Fsupremetb
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CD/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "twfofrfzlugq/eve.qdSeconds-/toolbar/supremetb\x0a")))))
; \.exe\s+v2\x2E0\s+smrtshpr-cs-
(assert (str.in.re X (re.++ (str.to.re ".exe") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "v2.0") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "smrtshpr-cs-\x13\x0a"))))
; (CZ-?)?[0-9]{8,10}
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "CZ") (re.opt (str.to.re "-")))) ((_ re.loop 8 10) (re.range "0" "9")) (str.to.re "\x0a"))))
; search2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php.*Logger.*Subject\x3a\s+Host\x3AHost\x3A
(assert (str.in.re X (re.++ (str.to.re "search2.ad.shopnav.com/9899/search/results.php") (re.* re.allchar) (str.to.re "Logger") (re.* re.allchar) (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:\x0a"))))
(check-sat)
