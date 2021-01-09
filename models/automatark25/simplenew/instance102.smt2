(declare-const X String)
; as\x2Estarware\x2Ecom%3fUser-Agent\x3Ahostie
(assert (str.in.re X (str.to.re "as.starware.com%3fUser-Agent:hostie\x0a")))
(check-sat)
