(declare-const X String)
; \x2Fpagead\x2Fads\?\d+ocllceclbhs\x2fgth
(assert (str.in.re X (re.++ (str.to.re "/pagead/ads?") (re.+ (re.range "0" "9")) (str.to.re "ocllceclbhs/gth\x0a"))))
(check-sat)
