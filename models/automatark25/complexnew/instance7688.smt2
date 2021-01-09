(declare-const X String)
; %3f\s+url=[^\n\r]*httpUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "%3f") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "url=") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "httpUser-Agent:\x0a"))))
; ^([a-zA-Z])*$
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; www\x2Efreescratchandwin\x2Ecom\d+Server.*www\x2Ecameup\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "www.freescratchandwin.com") (re.+ (re.range "0" "9")) (str.to.re "Server") (re.* re.allchar) (str.to.re "www.cameup.com\x13\x0a")))))
; /^\x2f\x3fptrxcz\x5f[a-zA-Z0-9]{30}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//?ptrxcz_") ((_ re.loop 30 30) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
(check-sat)
