(declare-const X String)
; GamespyAttachedIndyReferer\x3AToolbarCurrent\x3BCIA
(assert (str.in.re X (str.to.re "GamespyAttachedIndyReferer:ToolbarCurrent;CIA\x0a")))
; TROJAN-Owner\x3AUser-Agent\x3a%3fTs2\x2F
(assert (not (str.in.re X (str.to.re "TROJAN-Owner:User-Agent:%3fTs2/\x0a"))))
(check-sat)
