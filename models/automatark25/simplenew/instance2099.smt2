(declare-const X String)
; v=c=DALOGbacktrust\x2EcomHost\x3AConnectedHost\x3AHost\x3aHost\x3alsSpyDawn
(assert (str.in.re X (str.to.re "v=c=DALOGbacktrust.comHost:ConnectedHost:Host:Host:lsSpyDawn\x0a")))
(check-sat)
