(declare-const X String)
; \d{5}\-\d{3}
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; OSSProxyHost\x3ASubject\x3as_sq=aolsnssignin
(assert (not (str.in.re X (str.to.re "OSSProxyHost:Subject:s_sq=aolsnssignin\x0a"))))
(check-sat)
