(declare-const X String)
; \x5Chome\/lordofsearchToolbar\x22StarLogger\x22
(assert (not (str.in.re X (str.to.re "\x5chome/lordofsearchToolbar\x22StarLogger\x22\x0a"))))
(check-sat)
