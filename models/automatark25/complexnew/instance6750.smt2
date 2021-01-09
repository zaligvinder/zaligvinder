(declare-const X String)
; <img[^>]*src=\"?([^\"]*)\"?([^>]*alt=\"?([^\"]*)\"?)?[^>]*>
(assert (not (str.in.re X (re.++ (str.to.re "<img") (re.* (re.comp (str.to.re ">"))) (str.to.re "src=") (re.opt (str.to.re "\x22")) (re.* (re.comp (str.to.re "\x22"))) (re.opt (str.to.re "\x22")) (re.opt (re.++ (re.* (re.comp (str.to.re ">"))) (str.to.re "alt=") (re.opt (str.to.re "\x22")) (re.* (re.comp (str.to.re "\x22"))) (re.opt (str.to.re "\x22")))) (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a")))))
; ^\d+\*\d+\*\d+$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re "*") (re.+ (re.range "0" "9")) (str.to.re "*") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; \bhttp(s?)\:\/\/[a-zA-Z0-9\/\?\-\.\&\(\)_=#]*
(assert (not (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/") (str.to.re "?") (str.to.re "-") (str.to.re ".") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "_") (str.to.re "=") (str.to.re "#"))) (str.to.re "\x0a")))))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in.re X (str.to.re "(robert@blackcastlesoft.com)\x0a"))))
; ^[1-9]{3}\s{0,1}[0-9]{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "1" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
