(declare-const X String)
; 195\.225\.\<title\>Actual
(assert (str.in.re X (str.to.re "195.225.<title>Actual\x0a")))
; searchnugget\s+User-Agent\x3A\s+Downloadfowclxccdxn\x2fuxwn\.ddy
(assert (str.in.re X (re.++ (str.to.re "searchnugget\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Downloadfowclxccdxn/uxwn.ddy\x0a"))))
; /filename=[\x22\x27]?\d\.exe[\x22\x27]?/Hi
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.range "0" "9") (str.to.re ".exe") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/Hi\x0a")))))
; Cookie\x3a.*Host\x3A.*ldap\x3A\x2F\x2F
(assert (str.in.re X (re.++ (str.to.re "Cookie:") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "ldap://\x0a"))))
(check-sat)
