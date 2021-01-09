(declare-const X String)
; Port\x2E[^\n\r]*007\d+Logsdl\x2Eweb-nexus\x2Enet
(assert (str.in.re X (re.++ (str.to.re "Port.") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "007") (re.+ (re.range "0" "9")) (str.to.re "Logsdl.web-nexus.net\x0a"))))
(check-sat)
