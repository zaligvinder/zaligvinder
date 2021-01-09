(declare-const X String)
; Computeron\x3Acom\x3E2\x2E41
(assert (not (str.in.re X (str.to.re "Computeron:com>2.41\x0a"))))
; Host\x3aOnlineUser-Agent\x3Awww\x2Evip-se\x2Ecom
(assert (str.in.re X (str.to.re "Host:OnlineUser-Agent:www.vip-se.com\x13\x0a")))
; /Libs\/Starter(CmdExec|NetUtils|Rec|ScreenShots|Settings)\.py/
(assert (not (str.in.re X (re.++ (str.to.re "/Libs/Starter") (re.union (str.to.re "CmdExec") (str.to.re "NetUtils") (str.to.re "Rec") (str.to.re "ScreenShots") (str.to.re "Settings")) (str.to.re ".py/\x0a")))))
(check-sat)
