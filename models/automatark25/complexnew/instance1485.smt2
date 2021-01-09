(declare-const X String)
; tv\x2E180solutions\x2Ecom\s+have\s+Dayspassword\x3B0\x3BIncorrect
(assert (not (str.in.re X (re.++ (str.to.re "tv.180solutions.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "have") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Dayspassword;0;Incorrect\x0a")))))
; (^\d{3}\x2E\d{3}\x2E\d{3}\x2D\d{2}$)
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")))))
; (\b(1|2|3|4|5|6|7|8|9)?[0-9]\b)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9"))) (re.range "0" "9"))))
; version\s+error\*\-\*WrongUser-Agent\x3Acom\x2Findex\.php\?tpid=
(assert (str.in.re X (re.++ (str.to.re "version") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "error*-*WrongUser-Agent:com/index.php?tpid=\x0a"))))
; toolbarplace\x2Ecom.*TencentTraveler\d+\x2Fnewsurfer4\x2F.*BysooTBADdcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.* re.allchar) (str.to.re "TencentTraveler") (re.+ (re.range "0" "9")) (str.to.re "/newsurfer4/") (re.* re.allchar) (str.to.re "BysooTBADdcww.dmcast.com\x0a")))))
(check-sat)
