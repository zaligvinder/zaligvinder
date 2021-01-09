(declare-const X String)
; X-Mailer\x3AfromReferer\x3Asearch\x2econduit\x2ecom\x2Fdss\x2Fcc\.2_0_0\.
(assert (str.in.re X (str.to.re "X-Mailer:\x13fromReferer:search.conduit.com/dss/cc.2_0_0.\x0a")))
(check-sat)
