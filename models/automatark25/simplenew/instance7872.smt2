(declare-const X String)
; dialup\u{5f}vpn\u{40}hermangroup\u{2E}orgUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "dialup_vpn@hermangroup.orgUser-Agent:\u{a}")))
(check-sat)
