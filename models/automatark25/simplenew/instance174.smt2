(declare-const X String)
; couponbar\.coupons\.comKeystrokesSubject\x3A
(assert (not (str.in.re X (str.to.re "couponbar.coupons.comKeystrokesSubject:\x0a"))))
(check-sat)
