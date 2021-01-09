(declare-const X String)
; dialup\x5fvpn\x40hermangroup\x2Eorg\s+www\x2Epeer2mail\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "dialup_vpn@hermangroup.org") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.com\x0a")))))
(check-sat)
