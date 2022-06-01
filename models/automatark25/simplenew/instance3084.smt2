(declare-const X String)
; MSNLOGOVNUsertooffers\u{2E}bullseye-network\u{2E}com
(assert (not (str.in_re X (str.to_re "MSNLOGOVNUsertooffers.bullseye-network.com\u{a}"))))
(check-sat)
