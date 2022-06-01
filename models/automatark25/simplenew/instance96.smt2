(declare-const X String)
; /\.html\?jar$/U
(assert (not (str.in_re X (str.to_re "/.html?jar/U\u{a}"))))
(check-sat)
