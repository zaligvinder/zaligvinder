(declare-const X String)
; SurveillanceacezHost\u{3A}couponbar\.coupons\.comLOG
(assert (str.in_re X (str.to_re "Surveillance\u{13}acezHost:couponbar.coupons.comLOG\u{a}")))
(check-sat)
