(declare-const X String)
; User-Agent\x3Aregister\.aspUser-Agent\x3AHost\x3AcdpView
(assert (str.in.re X (str.to.re "User-Agent:register.aspUser-Agent:Host:cdpView\x0a")))
(check-sat)
