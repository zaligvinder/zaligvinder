(declare-const X String)
; ApofisAgentFunWebProductsUser-Agent\x3A
(assert (str.in.re X (str.to.re "ApofisAgentFunWebProductsUser-Agent:\x0a")))
(check-sat)
