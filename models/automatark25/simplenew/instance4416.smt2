(declare-const X String)
; /TimeToLive=[^&]*?(%60|\x60)/iP
(assert (not (str.in.re X (re.++ (str.to.re "/TimeToLive=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "%60") (str.to.re "`")) (str.to.re "/iP\x0a")))))
(check-sat)
