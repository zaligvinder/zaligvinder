(declare-const X String)
; /\/fnts\.html$/U
(assert (str.in_re X (str.to_re "//fnts.html/U\u{a}")))
(check-sat)
