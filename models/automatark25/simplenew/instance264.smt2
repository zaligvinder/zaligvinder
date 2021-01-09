(declare-const X String)
; Host\x3ADesktopcargo=report\<\x2Ftitle\>Host\x3a\.fcgiupgrade\x2Eqsrch\x2Einfo
(assert (str.in.re X (str.to.re "Host:Desktopcargo=report</title>Host:.fcgiupgrade.qsrch.info\x0a")))
(check-sat)
