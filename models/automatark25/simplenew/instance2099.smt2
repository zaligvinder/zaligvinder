(declare-const X String)
; v=c=DALOGbacktrust\u{2E}comHost\u{3A}ConnectedHost\u{3A}Host\u{3a}Host\u{3a}lsSpyDawn
(assert (str.in_re X (str.to_re "v=c=DALOGbacktrust.comHost:ConnectedHost:Host:Host:lsSpyDawn\u{a}")))
(check-sat)
