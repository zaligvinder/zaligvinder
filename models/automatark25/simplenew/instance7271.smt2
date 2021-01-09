(declare-const X String)
; t=ProtoUser-Agent\x3Aquick\x2Eqsrch\x2Ecom
(assert (str.in.re X (str.to.re "t=ProtoUser-Agent:quick.qsrch.com\x0a")))
(check-sat)
