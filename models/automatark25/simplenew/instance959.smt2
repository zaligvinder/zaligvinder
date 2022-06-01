(declare-const X String)
; \u{D}\u{A}Current\u{2E}earthlinkSpyBuddy
(assert (not (str.in_re X (str.to_re "\u{d}\u{a}Current.earthlinkSpyBuddy\u{a}"))))
(check-sat)
