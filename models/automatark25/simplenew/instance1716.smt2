(declare-const X String)
; www\u{2E}searchexpert\u{2E}com\d+Referer\u{3A}datcouponbar\.coupons\.com
(assert (str.in_re X (re.++ (str.to_re "www.searchexpert.com") (re.+ (re.range "0" "9")) (str.to_re "Referer:datcouponbar.coupons.com\u{a}"))))
(check-sat)
