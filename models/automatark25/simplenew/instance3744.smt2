(declare-const X String)
; HTTPwwwProbnymomspyo\x2fzowy
(assert (str.in.re X (str.to.re "HTTPwwwProbnymomspyo/zowy\x0a")))
(check-sat)
