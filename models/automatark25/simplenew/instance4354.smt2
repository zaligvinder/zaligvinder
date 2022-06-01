(declare-const X String)
; %3fSupremeSoftwareoffers\u{2E}bullseye-network\u{2E}com
(assert (not (str.in_re X (str.to_re "%3fSupremeSoftwareoffers.bullseye-network.com\u{a}"))))
(check-sat)
