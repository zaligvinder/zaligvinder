(declare-const X String)
; comUser-Agent\u{3A}si=PORT\u{3D}\u{2F}pagead\u{2F}ads\?Host\u{3a}\u{2F}desktop\u{2F}
(assert (not (str.in_re X (str.to_re "comUser-Agent:si=PORT=/pagead/ads?Host:/desktop/\u{a}"))))
(check-sat)
