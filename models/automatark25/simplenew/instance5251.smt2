(declare-const X String)
; User-Agent\x3A\x2Ftba\x2FFrom\x3A
(assert (not (str.in.re X (str.to.re "User-Agent:/tba/From:\x0a"))))
(check-sat)
