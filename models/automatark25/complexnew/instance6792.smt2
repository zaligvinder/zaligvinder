(declare-const X String)
; ^\b\d{2,3}-*\d{7}\b$
(assert (str.in.re X (re.++ ((_ re.loop 2 3) (re.range "0" "9")) (re.* (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; corep\x2Edmcast\x2Ecom\s+FunWebProducts\w+searchreslt\x7D\x7BSysuptime\x3ASubject\x3AHANDY
(assert (str.in.re X (re.++ (str.to.re "corep.dmcast.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "FunWebProducts") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "searchreslt}{Sysuptime:Subject:HANDY\x0a"))))
(check-sat)
