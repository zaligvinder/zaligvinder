(declare-const X String)
; EvilFTP\s+%3f[^\n\r]*\.bmpfilename\x3D\x22
(assert (str.in.re X (re.++ (str.to.re "EvilFTP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "%3f") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re ".bmpfilename=\x22\x0a"))))
(check-sat)
