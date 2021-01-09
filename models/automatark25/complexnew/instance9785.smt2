(declare-const X String)
; ^[A-Z][a-z]+((eir|(n|l)h)(a|o))$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a") (re.union (str.to.re "eir") (re.++ (re.union (str.to.re "n") (str.to.re "l")) (str.to.re "h"))) (re.union (str.to.re "a") (str.to.re "o")))))
; media\x2Etop-banners\x2Ecom
(assert (str.in.re X (str.to.re "media.top-banners.com\x0a")))
; /filename=[^\n]*\x2easx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".asx/i\x0a")))))
; ^[A-Z]{1,3}\d{6}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "A" "Z")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
