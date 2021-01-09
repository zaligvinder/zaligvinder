(declare-const X String)
; /Libs\/Starter(CmdExec|NetUtils|Rec|ScreenShots|Settings)\.py/
(assert (not (str.in.re X (re.++ (str.to.re "/Libs/Starter") (re.union (str.to.re "CmdExec") (str.to.re "NetUtils") (str.to.re "Rec") (str.to.re "ScreenShots") (str.to.re "Settings")) (str.to.re ".py/\x0a")))))
; from\s+\x2Fdss\x2Fcc\.2_0_0\.[^\n\r]*uploadServer
(assert (str.in.re X (re.++ (str.to.re "from") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/dss/cc.2_0_0.") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "uploadServer\x0a"))))
; \x2Fcs\x2Fpop4\x2FA-Spywww\x2Eyoogee\x2Ecom
(assert (str.in.re X (str.to.re "/cs/pop4/A-Spywww.yoogee.com\x13\x0a")))
(check-sat)
