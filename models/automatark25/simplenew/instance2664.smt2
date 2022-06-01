(declare-const X String)
; DesktopHost\u{3A}act=Microsoft
(assert (not (str.in_re X (str.to_re "DesktopHost:act=Microsoft\u{a}"))))
(check-sat)
