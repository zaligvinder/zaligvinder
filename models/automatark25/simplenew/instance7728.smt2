(declare-const X String)
; Host\x3AconfigINTERNAL\.iniUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "Host:configINTERNAL.iniUser-Agent:\x0a"))))
(check-sat)
