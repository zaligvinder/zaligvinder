(declare-const X String)
; clvompycem\x2fcen\.vcn.*Host\x3A\s+toolbar_domain_redirectHost\x3a
(assert (str.in.re X (re.++ (str.to.re "clvompycem/cen.vcn") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "toolbar_domain_redirectHost:\x0a"))))
; Fictionaliufilfwulmfi\x2friuf\.lio
(assert (str.in.re X (str.to.re "Fictionaliufilfwulmfi/riuf.lio\x0a")))
; ^[1]$|^[3]$|^[4]$|^[6]$|^[1]0$
(assert (str.in.re X (re.union (str.to.re "1") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "10\x0a"))))
(check-sat)
