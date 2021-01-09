(declare-const X String)
; couponbar\.coupons\.com\dOwner\x3A\s+Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "couponbar.coupons.com") (re.range "0" "9") (str.to.re "Owner:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a")))))
; ^[1-9]+[0-9]*$
(assert (str.in.re X (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; searchnugget\s+User-Agent\x3A\s+Downloadfowclxccdxn\x2fuxwn\.ddy
(assert (str.in.re X (re.++ (str.to.re "searchnugget\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Downloadfowclxccdxn/uxwn.ddy\x0a"))))
(check-sat)
