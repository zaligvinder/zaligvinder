(declare-const X String)
; Host\x3aSubject\x3AClientnamedFrom\x3A
(assert (str.in.re X (str.to.re "Host:Subject:ClientnamedFrom:\x0a")))
(check-sat)
