(declare-const X String)
; Host\u{3a}\dOVNUsertooffers\u{2E}bullseye-network\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "OVNUsertooffers.bullseye-network.com\u{a}"))))
(check-sat)
