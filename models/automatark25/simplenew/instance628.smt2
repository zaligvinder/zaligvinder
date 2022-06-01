(declare-const X String)
; dialupvpn\u{5f}pwd\u{2F}iis2ebs\.aspOn-Line\u{2E}\u{2E}\u{2E}Report\u{2F}newsurfer4\u{2F}URLAuthorization\u{3a}
(assert (str.in_re X (str.to_re "dialupvpn_pwd/iis2ebs.aspOn-Line...Report/newsurfer4/URLAuthorization:\u{a}")))
(check-sat)
