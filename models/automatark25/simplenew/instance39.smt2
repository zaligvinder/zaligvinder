(declare-const X String)
; couponbar\.coupons\.com\dOwner\u{3A}X-Sender\u{3A}
(assert (str.in_re X (re.++ (str.to_re "couponbar.coupons.com") (re.range "0" "9") (str.to_re "Owner:X-Sender:\u{13}\u{a}"))))
(check-sat)
