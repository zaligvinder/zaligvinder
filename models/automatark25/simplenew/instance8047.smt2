(declare-const X String)
; httphostHost\x3aAgent\x22
(assert (not (str.in.re X (str.to.re "httphostHost:Agent\x22\x0a"))))
(check-sat)
