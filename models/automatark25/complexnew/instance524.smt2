(declare-const X String)
; YWRtaW46YWRtaW4www\x2Ee-finder\x2EccNSIS_DOWNLOADHost\x3A
(assert (str.in.re X (str.to.re "YWRtaW46YWRtaW4www.e-finder.ccNSIS_DOWNLOADHost:\x0a")))
; Ready\s+Toolbar\d+ServerLiteToolbar
(assert (not (str.in.re X (re.++ (str.to.re "Ready") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Toolbar") (re.+ (re.range "0" "9")) (str.to.re "ServerLiteToolbar\x0a")))))
; \x2APORT1\x2AWarezX-Mailer\x3ASnake\x2Fbonzibuddy\x2F
(assert (not (str.in.re X (str.to.re "*PORT1*WarezX-Mailer:\x13Snake/bonzibuddy/\x0a"))))
(check-sat)
