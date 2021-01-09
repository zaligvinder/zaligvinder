(declare-const X String)
; www\x2Eonlinecasinoextra\x2Ecom\s+
(assert (not (str.in.re X (re.++ (str.to.re "www.onlinecasinoextra.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; ^[D-d][K-k]-[1-9]{1}[0-9]{3}$
(assert (not (str.in.re X (re.++ (re.range "D" "d") (re.range "K" "k") (str.to.re "-") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; url=http\x3A\s+jsp[^\n\r]*serverHOST\x3ASubject\x3Ai\-femdom\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "url=http:\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "jsp") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "serverHOST:Subject:i-femdom.com\x0a")))))
(check-sat)
