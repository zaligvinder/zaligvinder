(declare-const X String)
; dialup\u{5f}vpn\u{40}hermangroup\u{2E}orgUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "dialup_vpn@hermangroup.orgUser-Agent:\u{a}")))
; /^Host:\s*?[a-f0-9]{63,64}\./Him
(assert (not (str.in_re X (re.++ (str.to_re "/Host:") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 63 64) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "./Him\u{a}")))))
(check-sat)
