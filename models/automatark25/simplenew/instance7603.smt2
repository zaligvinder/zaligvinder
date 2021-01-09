(declare-const X String)
; www\x2Efreescratchandwin\x2Ecom\d+Server.*www\x2Ecameup\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "www.freescratchandwin.com") (re.+ (re.range "0" "9")) (str.to.re "Server") (re.* re.allchar) (str.to.re "www.cameup.com\x13\x0a"))))
(check-sat)
