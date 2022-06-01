(declare-const X String)
; www\u{2E}webcruiser\u{2E}ccgot
(assert (str.in_re X (str.to_re "www.webcruiser.ccgot\u{a}")))
; \u{D}\u{A}Current\u{2E}earthlinkSpyBuddy
(assert (str.in_re X (str.to_re "\u{d}\u{a}Current.earthlinkSpyBuddy\u{a}")))
(check-sat)
