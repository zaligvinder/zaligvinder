(declare-const X String)
; www\x2Eweepee\x2Ecom\w+Owner\x3A\d+metaresults\.copernic\.com
(assert (not (str.in.re X (re.++ (str.to.re "www.weepee.com\x1b") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.+ (re.range "0" "9")) (str.to.re "metaresults.copernic.com\x0a")))))
; ^([GB])*(([1-9]\d{8})|([1-9]\d{11}))$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re "G") (str.to.re "B"))) (re.union (re.++ (re.range "1" "9") ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 11 11) (re.range "0" "9")))) (str.to.re "\x0a")))))
; $(\n|\r\n)
(assert (str.in.re X (re.++ (re.union (str.to.re "\x0a") (str.to.re "\x0d\x0a")) (str.to.re "\x0a"))))
(check-sat)
