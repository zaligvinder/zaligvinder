(declare-const X String)
; <h([1-6])>([^<]*)</h([1-6])>
(assert (not (str.in.re X (re.++ (str.to.re "<h") (re.range "1" "6") (str.to.re ">") (re.* (re.comp (str.to.re "<"))) (str.to.re "</h") (re.range "1" "6") (str.to.re ">\x0a")))))
; dialup\x5fvpn\x40hermangroup\x2EorgUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "dialup_vpn@hermangroup.orgUser-Agent:\x0a"))))
(check-sat)
