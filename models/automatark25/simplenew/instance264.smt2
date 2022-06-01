(declare-const X String)
; Host\u{3A}Desktopcargo=report\<\u{2F}title\>Host\u{3a}\.fcgiupgrade\u{2E}qsrch\u{2E}info
(assert (str.in_re X (str.to_re "Host:Desktopcargo=report</title>Host:.fcgiupgrade.qsrch.info\u{a}")))
(check-sat)
