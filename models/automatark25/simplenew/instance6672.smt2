(declare-const X String)
; \u{3C}chat\u{3E}Host\u{3A}tid\u{3D}\u{7B}
(assert (str.in_re X (str.to_re "<chat>\u{1b}Host:tid={\u{a}")))
(check-sat)
