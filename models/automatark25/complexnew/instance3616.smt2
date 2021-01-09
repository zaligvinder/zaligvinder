(declare-const X String)
; www\x2Ecameup\x2Ecom\s+spyblini\x2Eini
(assert (str.in.re X (re.++ (str.to.re "www.cameup.com\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblini.ini\x0a"))))
; presentsearch\.netLocalHost\x3APORT\x3DWatchDogHost\x3A
(assert (str.in.re X (str.to.re "presentsearch.netLocalHost:PORT=WatchDogHost:\x0a")))
(check-sat)
