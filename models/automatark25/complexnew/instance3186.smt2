(declare-const X String)
; www\x2Eweepee\x2Ecom\w+Owner\x3Aiswww\x2Eemp3finder\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "www.weepee.com\x1b") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:iswww.emp3finder.com\x0a"))))
; httphost[^\n\r]*www\x2Emaxifiles\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "httphost") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "www.maxifiles.com\x0a")))))
; ^(\+?420)? ?[0-9]{3} ?[0-9]{3} ?[0-9]{3}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) (str.to.re "420"))) (re.opt (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; Pleasewww\x2Ewebfringe\x2Ecom\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax
(assert (str.in.re X (str.to.re "Pleasewww.webfringe.com\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax\x0a")))
; ((IT|LV)-?)?[0-9]{11}
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "IT") (str.to.re "LV")) (re.opt (str.to.re "-")))) ((_ re.loop 11 11) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
