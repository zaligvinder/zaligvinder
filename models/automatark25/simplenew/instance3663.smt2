(declare-const X String)
; connection\sHost\x3aSubject\x3A\.bmp
(assert (str.in.re X (re.++ (str.to.re "connection") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:Subject:.bmp\x0a"))))
(check-sat)
