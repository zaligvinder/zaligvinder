(declare-const X String)
; ^[a-zA-Z0-9]+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^[A-Z]{1,3}\d{6}$
(assert (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "A" "Z")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3A\ssource%3Dultrasearch136%26campaign%3Dsnap
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "source%3Dultrasearch136%26campaign%3Dsnap\x0a"))))
; couponbar\.coupons\.com\dOwner\x3AX-Sender\x3A
(assert (str.in.re X (re.++ (str.to.re "couponbar.coupons.com") (re.range "0" "9") (str.to.re "Owner:X-Sender:\x13\x0a"))))
; \.icosearch\x2econduit\x2ecom\x3Clogs\x40logs\x2Ecom\x3E
(assert (str.in.re X (str.to.re ".icosearch.conduit.com<logs@logs.com>\x0a")))
(check-sat)
