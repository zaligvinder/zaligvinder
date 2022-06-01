(declare-const X String)
; clvompycem\u{2f}cen\.vcn.*Host\u{3A}\s+toolbar_domain_redirectHost\u{3a}
(assert (str.in_re X (re.++ (str.to_re "clvompycem/cen.vcn") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "toolbar_domain_redirectHost:\u{a}"))))
; Fictionaliufilfwulmfi\u{2f}riuf\.lio
(assert (str.in_re X (str.to_re "Fictionaliufilfwulmfi/riuf.lio\u{a}")))
; ^[1]$|^[3]$|^[4]$|^[6]$|^[1]0$
(assert (str.in_re X (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "6") (str.to_re "10\u{a}"))))
(check-sat)
