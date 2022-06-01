(declare-const X String)
; iz=Referer\u{3A}offers\u{2E}bullseye-network\u{2E}com
(assert (str.in_re X (str.to_re "iz=Referer:offers.bullseye-network.com\u{a}")))
(check-sat)
