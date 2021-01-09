(declare-const X String)
; IPUSER-Host\x3AUser-Agent\x3A\x2Fsearchfast\x2F
(assert (str.in.re X (str.to.re "IPUSER-Host:User-Agent:/searchfast/\x0a")))
(check-sat)
