(declare-const X String)
; /filename=[^\n]*\x2ereg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".reg/i\x0a"))))
; www\x2Esearchexpert\x2Ecom\d+Referer\x3Adatcouponbar\.coupons\.com
(assert (not (str.in.re X (re.++ (str.to.re "www.searchexpert.com") (re.+ (re.range "0" "9")) (str.to.re "Referer:datcouponbar.coupons.com\x0a")))))
; is\s+lnzzlnbk\x2fpkrm\.fin\s+Host\x3A\x2Ftoolbar\x2Fsupremetb
(assert (not (str.in.re X (re.++ (str.to.re "is") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "lnzzlnbk/pkrm.fin") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:/toolbar/supremetb\x0a")))))
; www\x2e2-seek\x2ecom\x2fsearch\s+TPSystem
(assert (str.in.re X (re.++ (str.to.re "www.2-seek.com/search") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TPSystem\x0a"))))
(check-sat)
