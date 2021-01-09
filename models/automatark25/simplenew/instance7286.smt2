(declare-const X String)
; \x2Fbonzibuddy\x2Forigin\x3DsidefindApofisUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "/bonzibuddy/origin=sidefindApofisUser-Agent:\x0a"))))
(check-sat)
