(declare-const X String)
; \x2Ephp\s+www\x2Ewebfringe\x2Ecom
(assert (str.in.re X (re.++ (str.to.re ".php") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.webfringe.com\x0a"))))
; /\&k=\d+($|\&h=)/U
(assert (str.in.re X (re.++ (str.to.re "/&k=") (re.+ (re.range "0" "9")) (str.to.re "&h=/U\x0a"))))
(check-sat)
