(declare-const X String)
; devSoft\x27s\s+Host\x3AHost\x3A
(assert (str.in.re X (re.++ (str.to.re "devSoft's\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:\x0a"))))
(check-sat)
