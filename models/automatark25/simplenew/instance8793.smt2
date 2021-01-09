(declare-const X String)
; LoggerovplUser-Agent\x3At=searchreslt\x7D\x7BSysuptime\x3A
(assert (not (str.in.re X (str.to.re "LoggerovplUser-Agent:t=searchreslt}{Sysuptime:\x0a"))))
(check-sat)
