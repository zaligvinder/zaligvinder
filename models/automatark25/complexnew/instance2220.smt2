(declare-const X String)
; 195\.225\.\<title\>Actual
(assert (not (str.in.re X (str.to.re "195.225.<title>Actual\x0a"))))
; search2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php.*Logger.*Subject\x3a\s+Host\x3AHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "search2.ad.shopnav.com/9899/search/results.php") (re.* re.allchar) (str.to.re "Logger") (re.* re.allchar) (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:\x0a")))))
; ^((\d{1,3}((,\d{3})*|\d*)(\.{0,1})\d+)|\d+)$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.union (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.* (re.range "0" "9"))) (re.opt (str.to.re ".")) (re.+ (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (str.to.re "\x0a")))))
; WebsiteUser-Agent\x3Ahttphostfast-look\x2Ecom
(assert (str.in.re X (str.to.re "WebsiteUser-Agent:httphostfast-look.com\x0a")))
(check-sat)
