(declare-const X String)
; OSSProxyHost\x3ASubject\x3as_sq=aolsnssignin
(assert (not (str.in.re X (str.to.re "OSSProxyHost:Subject:s_sq=aolsnssignin\x0a"))))
(check-sat)
