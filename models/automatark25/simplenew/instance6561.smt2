(declare-const X String)
; /\.exe$/U
(assert (str.in_re X (str.to_re "/.exe/U\u{a}")))
(check-sat)
