(declare-const X String)
; MyBrowserSbAtsHost\x3A
(assert (not (str.in.re X (str.to.re "MyBrowserSbAtsHost:\x0a"))))
(check-sat)
