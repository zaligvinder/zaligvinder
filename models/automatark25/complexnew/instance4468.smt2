(declare-const X String)
; /Libs\/Starter(CmdExec|NetUtils|Rec|ScreenShots|Settings)\.py/
(assert (not (str.in.re X (re.++ (str.to.re "/Libs/Starter") (re.union (str.to.re "CmdExec") (str.to.re "NetUtils") (str.to.re "Rec") (str.to.re "ScreenShots") (str.to.re "Settings")) (str.to.re ".py/\x0a")))))
; www\.123mania\.com\x2F0409areZC-Bridge
(assert (not (str.in.re X (str.to.re "www.123mania.com/0409areZC-Bridge\x0a"))))
(check-sat)
