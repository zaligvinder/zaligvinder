(declare-const X String)
; \x2Easpx\s+www\x2Ealtnet\x2EcomSubject\x3A
(assert (str.in.re X (re.++ (str.to.re ".aspx") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.altnet.com\x1bSubject:\x0a"))))
(check-sat)
