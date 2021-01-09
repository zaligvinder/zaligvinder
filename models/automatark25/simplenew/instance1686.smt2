(declare-const X String)
; SurveillanceacezHost\x3Acouponbar\.coupons\.comLOG
(assert (str.in.re X (str.to.re "Surveillance\x13acezHost:couponbar.coupons.comLOG\x0a")))
(check-sat)
