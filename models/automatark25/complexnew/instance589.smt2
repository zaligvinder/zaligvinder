(declare-const X String)
; /\/stat_svc\/$/U
(assert (str.in.re X (str.to.re "//stat_svc//U\x0a")))
; %3fc=UI2GmbHbacktrust\x2EcomSpediaReferer\x3ASubject\x3aHost\x3apasscorrect\x3B
(assert (not (str.in.re X (str.to.re "%3fc=UI2GmbHbacktrust.comSpediaReferer:Subject:Host:passcorrect;\x0a"))))
(check-sat)
