(declare-const X String)
; Theef2offers\u{2E}bullseye-network\u{2E}com
(assert (not (str.in_re X (str.to_re "Theef2offers.bullseye-network.com\u{a}"))))
(check-sat)
