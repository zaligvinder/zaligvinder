(declare-const X String)
; User-Agent\x3aUser-Agent\x3AReport\x2EHost\x3Afhfksjzsfu\x2fahm\.uqs
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:Report.Host:fhfksjzsfu/ahm.uqs\x0a"))))
(check-sat)
