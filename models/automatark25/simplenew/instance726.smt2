(declare-const X String)
; /\/jorg\.html$/U
(assert (not (str.in.re X (str.to.re "//jorg.html/U\x0a"))))
(check-sat)
