(declare-const X String)
; Host\u{3A}User-Agent\u{3a}Host\u{3A}PortScaner
(assert (str.in_re X (str.to_re "Host:User-Agent:Host:PortScaner\u{a}")))
(check-sat)
