(declare-const X String)
; Host\u{3A}From\u{3a}Keylogger
(assert (not (str.in_re X (str.to_re "Host:From:Keylogger\u{a}"))))
(check-sat)
