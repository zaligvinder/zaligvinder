(declare-const X String)
; ^[\w]{1,}$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; connectedNodes\s+insert\s+haveFTUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "connectedNodes") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "insert") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "haveFTUser-Agent:\x0a")))))
; TROJAN-Owner\x3AUser-Agent\x3a%3fTs2\x2F
(assert (not (str.in.re X (str.to.re "TROJAN-Owner:User-Agent:%3fTs2/\x0a"))))
; dialup\x5fvpn\x40hermangroup\x2Eorg\s+www\x2Epeer2mail\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "dialup_vpn@hermangroup.org") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.com\x0a")))))
; wlpgskmv\x2flwzo\.qv#www\x2Ekliksearch\x2Ecom
(assert (not (str.in.re X (str.to.re "wlpgskmv/lwzo.qv#www.kliksearch.com\x0a"))))
(check-sat)
