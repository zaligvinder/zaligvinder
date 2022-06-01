(declare-const X String)
; Host\u{3A}AddressDaemonUser-Agent\u{3A}User-Agent\u{3a}
(assert (str.in_re X (str.to_re "Host:AddressDaemonUser-Agent:User-Agent:\u{a}")))
(check-sat)
