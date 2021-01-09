(declare-const X String)
; www\x2Epurityscan\x2Ecom\s+from\.myway\.comToolbarUI2
(assert (not (str.in.re X (re.++ (str.to.re "www.purityscan.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "from.myway.com\x1bToolbarUI2\x0a")))))
(check-sat)
