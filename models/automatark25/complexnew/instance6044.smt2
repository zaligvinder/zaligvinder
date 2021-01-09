(declare-const X String)
; /filename=[^\n]*\x2edocm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".docm/i\x0a")))))
; couponbar\.coupons\.com\dOwner\x3A\s+Host\x3A
(assert (str.in.re X (re.++ (str.to.re "couponbar.coupons.com") (re.range "0" "9") (str.to.re "Owner:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
; /\/modules\/(n?\d|nu)\.swf$/U
(assert (not (str.in.re X (re.++ (str.to.re "//modules/") (re.union (re.++ (re.opt (str.to.re "n")) (re.range "0" "9")) (str.to.re "nu")) (str.to.re ".swf/U\x0a")))))
(check-sat)
