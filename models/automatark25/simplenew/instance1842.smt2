(declare-const X String)
; trustyfiles\x2EcomBlade\x23\x23\x23\x23\.smx\?
(assert (not (str.in.re X (str.to.re "trustyfiles.comBlade####.smx?\x0a"))))
(check-sat)
