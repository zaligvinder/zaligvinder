(declare-const X String)
; /filename=[^\n]*\x2easf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asf/i\x0a"))))
; SurveillanceacezHost\x3Acouponbar\.coupons\.comLOG
(assert (str.in.re X (str.to.re "Surveillance\x13acezHost:couponbar.coupons.comLOG\x0a")))
; (^\*\.[a-zA-Z][a-zA-Z][a-zA-Z]$)|(^\*\.\*$)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "*.") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "*.*\x0a")))))
; (^[0-9]{0,10}$)
(assert (str.in.re X (re.++ ((_ re.loop 0 10) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
