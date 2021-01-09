(declare-const X String)
; User-Agent\x3ASpyPORT-ischeck=Component
(assert (str.in.re X (str.to.re "User-Agent:SpyPORT-ischeck=Component\x0a")))
(check-sat)
