(declare-const X String)
; couponbar\.coupons\.com\dOwner\x3AX-Sender\x3A
(assert (not (str.in.re X (re.++ (str.to.re "couponbar.coupons.com") (re.range "0" "9") (str.to.re "Owner:X-Sender:\x13\x0a")))))
(check-sat)
