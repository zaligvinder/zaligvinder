(declare-const X String)
; www\x2Efreescratchandwin\x2Ecom\d+Server.*www\x2Ecameup\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "www.freescratchandwin.com") (re.+ (re.range "0" "9")) (str.to.re "Server") (re.* re.allchar) (str.to.re "www.cameup.com\x13\x0a")))))
; Host\x3ASubject\x3AFrom\x3a\xd0\xc5\xcf\xa2
(assert (not (str.in.re X (str.to.re "Host:Subject:From:\xd0\xc5\xcf\xa2\x0a"))))
; /filename=[^\n]*\x2epls/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pls/i\x0a"))))
(check-sat)
