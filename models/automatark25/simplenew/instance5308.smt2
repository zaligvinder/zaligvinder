(declare-const X String)
; updates\u{5D}\u{25}20\u{5B}Port_NETObserve
(assert (not (str.in_re X (str.to_re "updates]%20[Port_NETObserve\u{a}"))))
(check-sat)
