(declare-const X String)
; TROJAN-Owner\x3AUser-Agent\x3a%3fTs2\x2F
(assert (str.in.re X (str.to.re "TROJAN-Owner:User-Agent:%3fTs2/\x0a")))
(check-sat)
