(declare-const X String)
; wowokayoffers\u{2E}bullseye-network\u{2E}comRTB\u{D}\u{A}\u{D}\u{A}Attached
(assert (not (str.in_re X (str.to_re "wowokayoffers.bullseye-network.comRTB\u{d}\u{a}\u{d}\u{a}Attached\u{a}"))))
(check-sat)
