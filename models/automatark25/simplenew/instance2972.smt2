(declare-const X String)
; Toolbar\x5Chome\/lordofsearchthis
(assert (not (str.in.re X (str.to.re "Toolbar\x5chome/lordofsearchthis\x0a"))))
(check-sat)
