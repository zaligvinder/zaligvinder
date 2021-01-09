(declare-const X String)
; Uin=\s+\.htaServerTheef2trustyfiles\x2EcomlogsHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Uin=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ".htaServerTheef2trustyfiles.comlogsHost:\x0a")))))
(check-sat)
