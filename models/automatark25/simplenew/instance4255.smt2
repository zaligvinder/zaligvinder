(declare-const X String)
; mywayUser-Agent\u{3A}Host\u{3A}Redirector\u{22}body=FeaR\u{25}200\u{2E}2\u{2E}0\u{25}20Online\u{3A}\u{25}20\u{5B}IP_
(assert (str.in_re X (str.to_re "mywayUser-Agent:Host:Redirector\u{22}body=FeaR%200.2.0%20Online:%20[IP_\u{a}")))
(check-sat)
