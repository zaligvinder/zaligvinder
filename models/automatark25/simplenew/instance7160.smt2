(declare-const X String)
; subject\x3Anode=LoginNSIS_DOWNLOAD
(assert (not (str.in.re X (str.to.re "subject:node=LoginNSIS_DOWNLOAD\x0a"))))
(check-sat)
