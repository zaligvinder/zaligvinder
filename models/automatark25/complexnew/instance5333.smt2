(declare-const X String)
; www\x2EZSearchResults\x2Ecom\dBar.*sponsor2\.ucmore\.com
(assert (str.in.re X (re.++ (str.to.re "www.ZSearchResults.com\x13") (re.range "0" "9") (str.to.re "Bar") (re.* re.allchar) (str.to.re "sponsor2.ucmore.com\x0a"))))
; ^\(0[1-9]{1}\)[0-9]{8}$
(assert (str.in.re X (re.++ (str.to.re "(0") ((_ re.loop 1 1) (re.range "1" "9")) (str.to.re ")") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^\d+\*\d+\*\d+$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re "*") (re.+ (re.range "0" "9")) (str.to.re "*") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
