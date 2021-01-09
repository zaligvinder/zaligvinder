(declare-const X String)
; \.bmp[^\n\r]*couponbar\.coupons\.com.*Host\x3AHost\x3aHTTPwww
(assert (not (str.in.re X (re.++ (str.to.re ".bmp") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "couponbar.coupons.com") (re.* re.allchar) (str.to.re "Host:Host:HTTPwww\x0a")))))
; http\x3A\x2F\x2Ftv\x2Eseekmo\x2Ecom\x2Fshowme\x2Easpx\x3Fkeyword=
(assert (not (str.in.re X (str.to.re "http://tv.seekmo.com/showme.aspx?keyword=\x0a"))))
; (\(")([0-9]*)(\")
(assert (str.in.re X (re.++ (str.to.re "(\x22") (re.* (re.range "0" "9")) (str.to.re "\x22\x0a"))))
(check-sat)
