(declare-const X String)
; ^(1?(-?\d{3})-?)?(\d{3})(-?\d{4})$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "1")) (re.opt (str.to.re "-")) (re.opt (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a") (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")))))
; ^[^\s]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; ^(([01][0-9]|[012][0-3]):([0-5][0-9]))*$
(assert (not (str.in.re X (re.++ (re.* (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9")) (re.++ (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")) (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a")))))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in.re X (str.to.re "(robert@blackcastlesoft.com)\x0a")))
(check-sat)
