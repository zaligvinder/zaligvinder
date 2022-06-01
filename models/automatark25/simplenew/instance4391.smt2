(declare-const X String)
; Host\u{3A}\s+offers\u{2E}bullseye-network\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "offers.bullseye-network.com\u{a}")))))
(check-sat)
