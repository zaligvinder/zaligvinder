(declare-const X String)
; ApofisAgentFunWebProductsUser-Agent\u{3A}
(assert (str.in_re X (str.to_re "ApofisAgentFunWebProductsUser-Agent:\u{a}")))
(check-sat)
