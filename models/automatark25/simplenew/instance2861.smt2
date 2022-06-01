(declare-const X String)
; Host\u{3a}Subject\u{3A}ClientnamedFrom\u{3A}
(assert (str.in_re X (str.to_re "Host:Subject:ClientnamedFrom:\u{a}")))
(check-sat)
