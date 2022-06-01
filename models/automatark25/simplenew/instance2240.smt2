(declare-const X String)
; LoggerovplUser-Agent\u{3A}t=searchreslt\u{7D}\u{7B}Sysuptime\u{3A}
(assert (not (str.in_re X (str.to_re "LoggerovplUser-Agent:t=searchreslt}{Sysuptime:\u{a}"))))
(check-sat)
