(declare-const X String)
; (a|b|c).(a.b)*.b+.c
(assert (not (str.in.re X (re.++ (re.union (str.to.re "a") (str.to.re "b") (str.to.re "c")) re.allchar (re.* (re.++ (str.to.re "a") re.allchar (str.to.re "b"))) re.allchar (re.+ (str.to.re "b")) re.allchar (str.to.re "c\x0a")))))
; www\x2Eweepee\x2Ecom\w+Owner\x3Aiswww\x2Eemp3finder\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "www.weepee.com\x1b") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:iswww.emp3finder.com\x0a"))))
(check-sat)
