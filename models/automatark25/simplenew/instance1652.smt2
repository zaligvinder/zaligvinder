(declare-const X String)
; User-Agent\x3ABetaWordixqshv\x2fqzccsServer\x00
(assert (not (str.in.re X (str.to.re "User-Agent:BetaWordixqshv/qzccsServer\x00\x0a"))))
(check-sat)
