(declare-const X String)
; Host\x3A\s+www\x2Ewebfringe\x2Ecom\d+Version\d\x2ElSpywww\x2Elookquick\x2EcomSubject\x3A\x3a\x29\r\n
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.webfringe.com") (re.+ (re.range "0" "9")) (str.to.re "Version") (re.range "0" "9") (str.to.re ".lSpywww.lookquick.comSubject::)\x0d\x0a\x13\x0a")))))
; /\/14\d{8}(.jar)?$/U
(assert (str.in.re X (re.++ (str.to.re "//14") ((_ re.loop 8 8) (re.range "0" "9")) (re.opt (re.++ re.allchar (str.to.re "jar"))) (str.to.re "/U\x0a"))))
(check-sat)
