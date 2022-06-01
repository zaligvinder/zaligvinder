(declare-const X String)
; Softwarerequestedoffers\u{2E}bullseye-network\u{2E}com
(assert (not (str.in_re X (str.to_re "Softwarerequestedoffers.bullseye-network.com\u{a}"))))
(check-sat)
