(declare-const X String)
; Host\u{3A}Host\u{3A}body=\u{25}21\u{25}21\u{25}21Optix
(assert (not (str.in_re X (str.to_re "Host:Host:body=%21%21%21Optix\u{13}\u{a}"))))
(check-sat)
