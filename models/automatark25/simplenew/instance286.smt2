(declare-const X String)
; URLUBAgent%3fSchwindlerurl=Host\x3ahttpUser-Agent\x3A
(assert (str.in.re X (str.to.re "URLUBAgent%3fSchwindlerurl=Host:httpUser-Agent:\x0a")))
(check-sat)
