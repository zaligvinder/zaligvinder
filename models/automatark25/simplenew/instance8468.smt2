(declare-const X String)
; PcastPORT-config\u{2E}180solutions\u{2E}com
(assert (not (str.in_re X (str.to_re "PcastPORT-config.180solutions.com\u{a}"))))
(check-sat)
