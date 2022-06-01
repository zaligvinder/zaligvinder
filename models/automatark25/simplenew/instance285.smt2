(declare-const X String)
; Explorer\u{2F}sto=notificationfind
(assert (not (str.in_re X (str.to_re "Explorer/sto=notification\u{13}find\u{a}"))))
(check-sat)
