(declare-const X String)
; /filename=[^\n]*\x2ecue/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cue/i\x0a")))))
; /^Host\x3A\s+.*jaiku\x2Ecom/smiH
(assert (str.in.re X (re.++ (str.to.re "/Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar) (str.to.re "jaiku.com/smiH\x0a"))))
; couponbar\.coupons\.com\dOwner\x3A\s+Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "couponbar.coupons.com") (re.range "0" "9") (str.to.re "Owner:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a")))))
(check-sat)
