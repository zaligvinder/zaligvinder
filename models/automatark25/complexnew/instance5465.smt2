(declare-const X String)
; Everyware.*Email.*Host\u{3A}stepwww\u{2E}kornputers\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Everyware") (re.* re.allchar) (str.to_re "Email") (re.* re.allchar) (str.to_re "Host:stepwww.kornputers.com\u{a}")))))
; www\u{2E}searchexpert\u{2E}com\d+Referer\u{3A}datcouponbar\.coupons\.com
(assert (not (str.in_re X (re.++ (str.to_re "www.searchexpert.com") (re.+ (re.range "0" "9")) (str.to_re "Referer:datcouponbar.coupons.com\u{a}")))))
; c\.goclick\.com[^\n\r]*is\s+URLBlaze
(assert (not (str.in_re X (re.++ (str.to_re "c.goclick.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "is") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "URLBlaze\u{a}")))))
(check-sat)
