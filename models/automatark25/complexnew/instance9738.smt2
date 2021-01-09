(declare-const X String)
; engineResultUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "engineResultUser-Agent:\x0a"))))
; Host\x3ADesktopcargo=report\<\x2Ftitle\>Host\x3a\.fcgiupgrade\x2Eqsrch\x2Einfo
(assert (not (str.in.re X (str.to.re "Host:Desktopcargo=report</title>Host:.fcgiupgrade.qsrch.info\x0a"))))
(check-sat)
