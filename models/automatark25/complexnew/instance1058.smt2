(declare-const X String)
; cyber@yahoo\u{2E}comconfig\u{2E}180solutions\u{2E}com
(assert (str.in_re X (str.to_re "cyber@yahoo.comconfig.180solutions.com\u{a}")))
; SurveillanceacezHost\u{3A}couponbar\.coupons\.comLOG
(assert (str.in_re X (str.to_re "Surveillance\u{13}acezHost:couponbar.coupons.comLOG\u{a}")))
; upgrade\u{2E}qsrch\u{2E}info.*report.*Host\u{3A}.*Host\u{3A}kwd-i%3fUser-Agent\u{3A}www\u{2e}proventactics\u{2e}com
(assert (str.in_re X (re.++ (str.to_re "upgrade.qsrch.info") (re.* re.allchar) (str.to_re "report") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "Host:kwd-i%3fUser-Agent:www.proventactics.com\u{a}"))))
(check-sat)
