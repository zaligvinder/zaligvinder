(declare-const X String)
; HANDY\s+newsSoftActivitypassword\x3B1\x3BOptixtv\x2E180solutions\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "HANDY") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "newsSoftActivity\x13password;1;Optixtv.180solutions.com\x0a")))))
(check-sat)
