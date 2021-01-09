(declare-const X String)
; ((^[0-9]*).?((BIS)|(TER)|(QUATER))?)?((\W+)|(^))(([a-z]+.)*)([0-9]{5})?.(([a-z\'']+.)*)$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.* (re.range "0" "9")) (re.opt re.allchar) (re.opt (re.union (str.to.re "BIS") (str.to.re "TER") (str.to.re "QUATER"))))) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (re.* (re.++ (re.+ (re.range "a" "z")) re.allchar)) (re.opt ((_ re.loop 5 5) (re.range "0" "9"))) re.allchar (re.* (re.++ (re.+ (re.union (re.range "a" "z") (str.to.re "'"))) re.allchar)) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2exm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xm/i\x0a"))))
; couponbar\.coupons\.com\dOwner\x3A\s+Host\x3A
(assert (str.in.re X (re.++ (str.to.re "couponbar.coupons.com") (re.range "0" "9") (str.to.re "Owner:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in.re X (str.to.re "(robert@blackcastlesoft.com)\x0a")))
(check-sat)
