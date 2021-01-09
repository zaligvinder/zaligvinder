(declare-const X String)
; /\/loader\.cpl$/U
(assert (not (str.in.re X (str.to.re "//loader.cpl/U\x0a"))))
(check-sat)
