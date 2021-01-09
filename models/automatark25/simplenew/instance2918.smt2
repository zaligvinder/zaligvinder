(declare-const X String)
; www\x2EZSearchResults\x2Ecom\dBar.*sponsor2\.ucmore\.com
(assert (not (str.in.re X (re.++ (str.to.re "www.ZSearchResults.com\x13") (re.range "0" "9") (str.to.re "Bar") (re.* re.allchar) (str.to.re "sponsor2.ucmore.com\x0a")))))
(check-sat)
