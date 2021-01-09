(declare-const X String)
; cyber@yahoo\x2Ecomconfig\x2E180solutions\x2Ecom
(assert (str.in.re X (str.to.re "cyber@yahoo.comconfig.180solutions.com\x0a")))
; SurveillanceacezHost\x3Acouponbar\.coupons\.comLOG
(assert (str.in.re X (str.to.re "Surveillance\x13acezHost:couponbar.coupons.comLOG\x0a")))
; upgrade\x2Eqsrch\x2Einfo.*report.*Host\x3A.*Host\x3Akwd-i%3fUser-Agent\x3Awww\x2eproventactics\x2ecom
(assert (str.in.re X (re.++ (str.to.re "upgrade.qsrch.info") (re.* re.allchar) (str.to.re "report") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "Host:kwd-i%3fUser-Agent:www.proventactics.com\x0a"))))
(check-sat)
