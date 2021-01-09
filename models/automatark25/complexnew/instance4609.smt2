(declare-const X String)
; /Libs\/Starter(CmdExec|NetUtils|Rec|ScreenShots|Settings)\.py/
(assert (not (str.in.re X (re.++ (str.to.re "/Libs/Starter") (re.union (str.to.re "CmdExec") (str.to.re "NetUtils") (str.to.re "Rec") (str.to.re "ScreenShots") (str.to.re "Settings")) (str.to.re ".py/\x0a")))))
; /nsrmm[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (not (str.in.re X (re.++ (str.to.re "/nsrmm") (re.* (re.comp (str.to.re "\x00"))) (re.union (str.to.re "$(") (str.to.re ";") (str.to.re "|") (str.to.re "&") (str.to.re "`")) (str.to.re "/\x0a")))))
(check-sat)
