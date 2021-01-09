(declare-const X String)
; Server.*Host\x3a\s+newsSoftActivitypassword\x3B1\x3BOptix
(assert (not (str.in.re X (re.++ (str.to.re "Server") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "newsSoftActivity\x13password;1;Optix\x0a")))))
(check-sat)
