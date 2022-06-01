(declare-const X String)
; Host\u{3a}\dOVNUsertooffers\u{2E}bullseye-network\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "OVNUsertooffers.bullseye-network.com\u{a}"))))
; Referer\u{3A}dialupvpn\u{5f}pwdwww\u{2E}searchreslt\u{2E}com
(assert (not (str.in_re X (str.to_re "Referer:dialupvpn_pwdwww.searchreslt.com\u{a}"))))
; Daemonwww\u{2E}lookquick\u{2E}comHost\u{3A}
(assert (not (str.in_re X (str.to_re "Daemonwww.lookquick.comHost:\u{a}"))))
; ^([A-Za-z]\d[A-Za-z][-]?\d[A-Za-z]\d)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (str.to_re "-")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9")))))
(check-sat)
