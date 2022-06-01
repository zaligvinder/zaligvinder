(declare-const X String)
; attachedEverywareHELOBasic
(assert (str.in_re X (str.to_re "attachedEverywareHELOBasic\u{a}")))
(check-sat)
