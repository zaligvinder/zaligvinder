(declare-const X String)
; (^\+[0-9]{2}|^\+[0-9]{2}\(0\)|^\(\+[0-9]{2}\)\(0\)|^00[0-9]{2}|^0)([0-9]{9}$|[0-9\-\s]{10}$)
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "+") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "+") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "(0)")) (re.++ (str.to.re "(+") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re ")(0)")) (re.++ (str.to.re "00") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "0")) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 10 10) (re.union (re.range "0" "9") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a")))))
; www\x2EZSearchResults\x2Ecom\dBar.*sponsor2\.ucmore\.com
(assert (not (str.in.re X (re.++ (str.to.re "www.ZSearchResults.com\x13") (re.range "0" "9") (str.to.re "Bar") (re.* re.allchar) (str.to.re "sponsor2.ucmore.com\x0a")))))
(check-sat)
