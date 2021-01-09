(declare-const X String)
; \.bmp[^\n\r]*couponbar\.coupons\.com.*Host\x3AHost\x3aHTTPwww
(assert (str.in.re X (re.++ (str.to.re ".bmp") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "couponbar.coupons.com") (re.* re.allchar) (str.to.re "Host:Host:HTTPwww\x0a"))))
; User-Agent\x3aUser-Agent\x3A
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a")))
(check-sat)
