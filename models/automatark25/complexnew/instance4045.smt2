(declare-const X String)
; Logtraffbest\x2EbizAdToolsLogged
(assert (str.in.re X (str.to.re "Logtraffbest.bizAdToolsLogged\x0a")))
; X-Mailer\x3AfromReferer\x3Asearch\x2econduit\x2ecom\x2Fdss\x2Fcc\.2_0_0\.
(assert (str.in.re X (str.to.re "X-Mailer:\x13fromReferer:search.conduit.com/dss/cc.2_0_0.\x0a")))
; (\\.|[^"])*
(assert (not (str.in.re X (re.++ (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (re.comp (str.to.re "\x22")))) (str.to.re "\x0a")))))
(check-sat)
