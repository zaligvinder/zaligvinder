(declare-const X String)
; ^\d{1,2}\.\d{3}\.\d{3}[-][0-9kK]{1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 1) (re.union (re.range "0" "9") (str.to.re "k") (str.to.re "K"))) (str.to.re "\x0a")))))
; Host\x3AHANDYwww\x2Epurityscan\x2Ecom
(assert (not (str.in.re X (str.to.re "Host:HANDYwww.purityscan.com\x0a"))))
; Theef2\sHost\x3A\s+User-Agent\x3awww\x2Esogou\x2EcomUser-Agent\x3AMyPostToolbar
(assert (str.in.re X (re.++ (str.to.re "Theef2") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:www.sogou.comUser-Agent:MyPostToolbar\x0a"))))
; Cookie\x3a.*Host\x3A.*ldap\x3A\x2F\x2F
(assert (str.in.re X (re.++ (str.to.re "Cookie:") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "ldap://\x0a"))))
(check-sat)
