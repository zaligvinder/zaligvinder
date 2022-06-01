(declare-const X String)
; \/cgi-bin\/PopupVHost\u{3A}piolet\u{D}\u{A}\u{D}\u{A}Attached
(assert (not (str.in_re X (str.to_re "/cgi-bin/PopupVHost:piolet\u{d}\u{a}\u{d}\u{a}Attached\u{a}"))))
(check-sat)
