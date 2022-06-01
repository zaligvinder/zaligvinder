(declare-const X String)
; Server\.exeHWPEServer\u{3a}Host\u{3A}
(assert (str.in_re X (str.to_re "Server.exeHWPEServer:Host:\u{a}")))
(check-sat)
