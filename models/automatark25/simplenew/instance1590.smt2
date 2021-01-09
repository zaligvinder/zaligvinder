(declare-const X String)
; \x7D\x7BTrojan\x3ASubject\x3Aversion
(assert (str.in.re X (str.to.re "}{Trojan:Subject:version\x0a")))
(check-sat)
