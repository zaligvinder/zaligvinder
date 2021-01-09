(declare-const X String)
; \.bmp[^\n\r]*couponbar\.coupons\.com.*Host\x3AHost\x3aHTTPwww
(assert (not (str.in.re X (re.++ (str.to.re ".bmp") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "couponbar.coupons.com") (re.* re.allchar) (str.to.re "Host:Host:HTTPwww\x0a")))))
; ^[a-zA-Z0-9][a-zA-Z0-9_]{2,29}$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) ((_ re.loop 2 29) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "\x0a"))))
(check-sat)
