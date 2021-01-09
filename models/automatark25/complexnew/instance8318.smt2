(declare-const X String)
; url=\"([^\[\]\"]*)\"
(assert (not (str.in.re X (re.++ (str.to.re "url=\x22") (re.* (re.union (str.to.re "[") (str.to.re "]") (str.to.re "\x22"))) (str.to.re "\x22\x0a")))))
; www\x2Eweepee\x2Ecom\w+Owner\x3A\d+metaresults\.copernic\.com
(assert (str.in.re X (re.++ (str.to.re "www.weepee.com\x1b") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.+ (re.range "0" "9")) (str.to.re "metaresults.copernic.com\x0a"))))
; sidesearch\.dropspam\.com\s+Strip-Player\s+
(assert (str.in.re X (re.++ (str.to.re "sidesearch.dropspam.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Strip-Player\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; [-]?[1-9]\d{0,16}\.?\d{0,2}|[-]?[0]?\.[1-9]{1,2}|[-]?[0]?\.[0-9][1-9]
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (re.range "1" "9") ((_ re.loop 0 16) (re.range "0" "9")) (re.opt (str.to.re ".")) ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "0")) (str.to.re ".") ((_ re.loop 1 2) (re.range "1" "9"))) (re.++ (re.opt (str.to.re "-")) (re.opt (str.to.re "0")) (str.to.re ".") (re.range "0" "9") (re.range "1" "9") (str.to.re "\x0a"))))))
(check-sat)
