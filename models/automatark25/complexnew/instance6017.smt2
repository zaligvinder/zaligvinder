(declare-const X String)
; <[^>]*\n?.*=("|')?(.*\.jpg)("|')?.*\n?[^<]*>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (re.comp (str.to.re ">"))) (re.opt (str.to.re "\x0a")) (re.* re.allchar) (str.to.re "=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.* re.allchar) (re.opt (str.to.re "\x0a")) (re.* (re.comp (str.to.re "<"))) (str.to.re ">\x0a") (re.* re.allchar) (str.to.re ".jpg")))))
; track\s+community\d+4\x2e8\x2e4www\x2Emaxifiles\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "track") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "community") (re.+ (re.range "0" "9")) (str.to.re "4.8.4www.maxifiles.com\x0a"))))
; couponbar\.coupons\.com\dOwner\x3A\s+Host\x3A
(assert (str.in.re X (re.++ (str.to.re "couponbar.coupons.com") (re.range "0" "9") (str.to.re "Owner:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
(check-sat)
