(declare-const X String)
; [a-zA-Z][a-zA-Z0-9_\-\,\.]{5,31}
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 5 31) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re ",") (str.to.re "."))) (str.to.re "\x0a")))))
; www\x2Esearchexpert\x2Ecom\d+Referer\x3Adatcouponbar\.coupons\.com
(assert (not (str.in.re X (re.++ (str.to.re "www.searchexpert.com") (re.+ (re.range "0" "9")) (str.to.re "Referer:datcouponbar.coupons.com\x0a")))))
; /filename=[^\n]*\x2emppl/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mppl/i\x0a"))))
; ^(([01][0-9]|[012][0-3]):([0-5][0-9]))*$
(assert (str.in.re X (re.++ (re.* (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9")) (re.++ (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")) (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a"))))
; \x2Ftoolbar\x2F\d+www\x2Ericercadoppia\x2EcomPALTALKSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "/toolbar/") (re.+ (re.range "0" "9")) (str.to.re "www.ricercadoppia.comPALTALKSubject:\x0a")))))
(check-sat)
