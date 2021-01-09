(declare-const X String)
; dialup\x5fvpn\x40hermangroup\x2EorgUser-Agent\x3A
(assert (str.in.re X (str.to.re "dialup_vpn@hermangroup.orgUser-Agent:\x0a")))
(check-sat)
