(declare-const X String)
; %3fSupremeSoftwareoffers\u{2E}bullseye-network\u{2E}com
(assert (str.in_re X (str.to_re "%3fSupremeSoftwareoffers.bullseye-network.com\u{a}")))
; ^[0-9#\*abcdABCD]+$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to_re "#") (str.to_re "*") (str.to_re "a") (str.to_re "b") (str.to_re "c") (str.to_re "d") (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "D"))) (str.to_re "\u{a}"))))
(check-sat)
