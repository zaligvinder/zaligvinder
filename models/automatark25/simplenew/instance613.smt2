(declare-const X String)
; /\/\[fx]\.jar$/U
(assert (str.in_re X (str.to_re "//[fx].jar/U\u{a}")))
(check-sat)
