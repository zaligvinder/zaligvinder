(declare-const X String)
; Host\x3Acdpnode=FILESIZE\x3E
(assert (not (str.in.re X (str.to.re "Host:cdpnode=FILESIZE>\x13\x0a"))))
(check-sat)
