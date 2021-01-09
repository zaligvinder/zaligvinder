(declare-const X String)
; Download\d+ocllceclbhs\x2fgth
(assert (str.in.re X (re.++ (str.to.re "Download") (re.+ (re.range "0" "9")) (str.to.re "ocllceclbhs/gth\x0a"))))
(check-sat)
