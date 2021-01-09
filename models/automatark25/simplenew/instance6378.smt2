(declare-const X String)
; User-Agent\x3ADirectory
(assert (str.in.re X (str.to.re "User-Agent:Directory\x0a")))
(check-sat)
