(declare-const X String)
; corep\x2Edmcast\x2EcomOwner\x3A
(assert (not (str.in.re X (str.to.re "corep.dmcast.comOwner:\x0a"))))
(check-sat)
