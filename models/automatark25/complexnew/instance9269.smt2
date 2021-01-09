(declare-const X String)
; /\x2ehtc([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.htc") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; SurveillanceacezHost\x3Acouponbar\.coupons\.comLOG
(assert (not (str.in.re X (str.to.re "Surveillance\x13acezHost:couponbar.coupons.comLOG\x0a"))))
; /^\/[a-f0-9]{32}\.php\?q=[a-f0-9]{32}$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".php?q=") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
(check-sat)
