(declare-const X String)
; Computeron\u{3A}com\u{3E}2\u{2E}41
(assert (not (str.in_re X (str.to_re "Computeron:com>2.41\u{a}"))))
; Host\u{3a}OnlineUser-Agent\u{3A}www\u{2E}vip-se\u{2E}com
(assert (str.in_re X (str.to_re "Host:OnlineUser-Agent:www.vip-se.com\u{13}\u{a}")))
; /Libs\/Starter(CmdExec|NetUtils|Rec|ScreenShots|Settings)\.py/
(assert (not (str.in_re X (re.++ (str.to_re "/Libs/Starter") (re.union (str.to_re "CmdExec") (str.to_re "NetUtils") (str.to_re "Rec") (str.to_re "ScreenShots") (str.to_re "Settings")) (str.to_re ".py/\u{a}")))))
(check-sat)
