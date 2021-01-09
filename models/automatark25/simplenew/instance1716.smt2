(declare-const X String)
; www\x2Esearchexpert\x2Ecom\d+Referer\x3Adatcouponbar\.coupons\.com
(assert (str.in.re X (re.++ (str.to.re "www.searchexpert.com") (re.+ (re.range "0" "9")) (str.to.re "Referer:datcouponbar.coupons.com\x0a"))))
(check-sat)
