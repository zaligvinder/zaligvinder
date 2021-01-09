(declare-const X String)
; Subject\x3a\d+rprpgbnrppb\x2fci
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "rprpgbnrppb/ci\x0a"))))
; shprrprt-cs-Pre\x2Fta\x2FNEWS\x2F
(assert (str.in.re X (str.to.re "shprrprt-cs-\x13Pre/ta/NEWS/\x0a")))
; Host\x3A\s+\.ico\s+Host\x3Aorigin\x3Dsidefind
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".ico") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:origin=sidefind\x0a"))))
; Cookie\x3a.*Host\x3A.*ldap\x3A\x2F\x2F
(assert (str.in.re X (re.++ (str.to.re "Cookie:") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "ldap://\x0a"))))
; spas\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=
(assert (not (str.in.re X (re.++ (str.to.re "spas") (re.+ (re.range "0" "9")) (str.to.re "media.dxcdirect.com.smx?PASSW=\x0a")))))
(check-sat)
