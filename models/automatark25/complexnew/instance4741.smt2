(declare-const X String)
; www\x2Esearchexpert\x2Ecom\d+Referer\x3Adatcouponbar\.coupons\.com
(assert (str.in.re X (re.++ (str.to.re "www.searchexpert.com") (re.+ (re.range "0" "9")) (str.to.re "Referer:datcouponbar.coupons.com\x0a"))))
; search\x2econduit\x2ecom\sPARSER.*
(assert (not (str.in.re X (re.++ (str.to.re "search.conduit.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "PARSER") (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
