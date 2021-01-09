(declare-const X String)
; www\x2Eweepee\x2Ecom\d+metaresults\.copernic\.com\s+
(assert (str.in.re X (re.++ (str.to.re "www.weepee.com\x1b") (re.+ (re.range "0" "9")) (str.to.re "metaresults.copernic.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
