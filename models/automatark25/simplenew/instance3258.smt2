(declare-const X String)
; User-Agent\x3Auuid=aadserverfowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in.re X (str.to.re "User-Agent:uuid=aadserverfowclxccdxn/uxwn.ddy\x0a"))))
(check-sat)
