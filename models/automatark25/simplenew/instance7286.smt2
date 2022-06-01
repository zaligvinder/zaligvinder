(declare-const X String)
; \u{2F}bonzibuddy\u{2F}origin\u{3D}sidefindApofisUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "/bonzibuddy/origin=sidefindApofisUser-Agent:\u{a}"))))
(check-sat)
