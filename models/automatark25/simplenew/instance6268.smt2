(declare-const X String)
; OSSProxyHost\u{3A}Subject\u{3a}s_sq=aolsnssignin
(assert (not (str.in_re X (str.to_re "OSSProxyHost:Subject:s_sq=aolsnssignin\u{a}"))))
(check-sat)
