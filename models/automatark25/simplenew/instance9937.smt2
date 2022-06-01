(declare-const X String)
; IPAnaloffers\u{2E}bullseye-network\u{2E}com
(assert (not (str.in_re X (str.to_re "IPAnaloffers.bullseye-network.com\u{a}"))))
(check-sat)
