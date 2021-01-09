(declare-const X String)
; Everyware.*Email.*Host\x3Astepwww\x2Ekornputers\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Everyware") (re.* re.allchar) (str.to.re "Email") (re.* re.allchar) (str.to.re "Host:stepwww.kornputers.com\x0a")))))
; www\x2Esearchexpert\x2Ecom\d+Referer\x3Adatcouponbar\.coupons\.com
(assert (not (str.in.re X (re.++ (str.to.re "www.searchexpert.com") (re.+ (re.range "0" "9")) (str.to.re "Referer:datcouponbar.coupons.com\x0a")))))
; c\.goclick\.com[^\n\r]*is\s+URLBlaze
(assert (not (str.in.re X (re.++ (str.to.re "c.goclick.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "is") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "URLBlaze\x0a")))))
(check-sat)
