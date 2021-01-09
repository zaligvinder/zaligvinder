(declare-const X String)
; DesktopHost\x3Aact=Microsoft
(assert (not (str.in.re X (str.to.re "DesktopHost:act=Microsoft\x0a"))))
(check-sat)
