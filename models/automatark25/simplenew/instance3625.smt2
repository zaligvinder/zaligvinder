(declare-const X String)
; Host\x3AAddressDaemonUser-Agent\x3AUser-Agent\x3a
(assert (str.in.re X (str.to.re "Host:AddressDaemonUser-Agent:User-Agent:\x0a")))
(check-sat)
